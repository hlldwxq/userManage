import nltk
from nltk.corpus import movie_reviews
from pylab import plot,show
from numpy import array
from numpy.random import rand
from scipy.cluster.vq import kmeans,vq,whiten
import numpy as np
import random


documents = [(list(movie_reviews.words(fileid)), category) for category in movie_reviews.categories() for fileid in movie_reviews.fileids(category)]  #转化为词列表的影评，与标签，组成二元组
random.shuffle(documents)	

all_words = nltk.FreqDist(w.lower() for w in movie_reviews.words())	 #建立全部影评的词频表
all_words=all_words.most_common(2000)			#词频表按频率排序
stopwords = nltk.corpus.stopwords.words('english')
word_features  =[w for (w,f) in all_words if w not in stopwords] 		#特征词为词频表中前2000词

def document_features(document):		#建立特征提取器，标定该影评是否有特征词
	document_words = set(document)
	features = {}
	for word in word_features:
		features['contains(%s)' % word] = (word in document_words)
	return features

featuresets = [(document_features(d), c) for (d,c) in documents]
train_set=featuresets[:1000]
test_set=featuresets[1000:]

#建立特征提取器，标定该影评是否有特征词
#词集模式
features = np.zeros([len(documents),len(word_features)],dtype=float)
for n in range(len(documents)):
        document_words = set(documents[n][0])
        for  m in range(len(word_features)):
                if word_features[m] in document_words:
                        features[n,m] = 1
#词袋模式
features1 = np.zeros([len(documents),len(word_features)],dtype=float)
for n in range(len(documents)):
        document_words1 = set(documents[n][0])
        for m in range(len(word_features)):
                if word_features[m] in document_words1:
                        features1[n,m] = documents[n][0].count(word_features[m])

target=[c for (d,c) in documents]
train_set1=features[:1000,:]
train_set2=features1[:1000,:]
target_train=target[:1000]
                                                               
test_set1=features[1000:,:]
test_set2=features1[1000:,:]
target_test=target[1000:]

from Bio import kNN
from scipy import spatial
model = kNN.train(train_set1, target_train, 7)
dcos=[kNN.classify(model, t, distance_fn=spatial.distance.cosine) for t in test_set1]
print('词集=',sum(np.array(dcos)==np.array(target_test))/len(target_test))

model1 = kNN.train(train_set2, target_train, 7)
dcos=[kNN.classify(model1, t, distance_fn=spatial.distance.cosine) for t in test_set2]
print('词袋=',sum(np.array(dcos)==np.array(target_test))/len(target_test))
