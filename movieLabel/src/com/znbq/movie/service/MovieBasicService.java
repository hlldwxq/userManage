package com.znbq.movie.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.movie.dao.MovieBasicDAO;
import com.znbq.movie.entity.MovieBasic;
import com.znbq.sort.*;

@Transactional
@Service
public class MovieBasicService {

	@Autowired
	public MovieBasicDAO movieBasicDAO;

	/*添加一条数据*/
	public void addMovieBasic(MovieBasic movieBasic) {
		movieBasicDAO.addMovieBasic(movieBasic);
	}

	/*通过id寻找数据*/
	public MovieBasic getMovieBasicById(String id) {
		return movieBasicDAO.getMovieBasicById(id);
	}

	/*更新一条数据*/
	public void updateMovieBasic(MovieBasic movieBasic) {
		movieBasicDAO.updateMovieBasic(movieBasic);
	}

	/*
	public void deleteMovieBasicById(String id) {
		movieBasicDAO.deleteMovieBasicById(id);
	}
	*/

	/*获取所有数据*/
	public List<MovieBasic> getMovieBasic() {
		return movieBasicDAO.getMovieBasic();
	}

	//投资决策-平均票房
	public float averageBoxOffice(String type) {
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据
		float averageBoxOffice = 0;	//平均票房
		int i=0,j=0;	//i为总电影数，j为已加和的电影数
		for (i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)&&list.get(i).getBoxOffice()!=null) {
					j++;
					if(list.get(i).getBoxOffice()!=null){
						averageBoxOffice += Float.parseFloat(list.get(i).getBoxOffice());
					}
				}
			}
		}
		if(j!=0){
			averageBoxOffice = averageBoxOffice / j;
		}
		System.out.println("平均票房：" + averageBoxOffice);
		return averageBoxOffice;
	}

	//投资决策-观众满意度
	public float averageScore(String type) {
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据
		float averageScore = 0;	//平均评分
		int i = 0, j = 0;	//i为总电影数，j为已加和的电影数
		for (i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					j++;
					if(list.get(i).getDoubanScore()!=null){
						averageScore += Float.parseFloat(list.get(i).getDoubanScore());
					}
				}
			}
		}
		if(j!=0){
			averageScore = averageScore / j;
		}
		return averageScore;
	}

	//投资决策-发行档期
	public String[] allDate(String type) {
		String[] date = new String[20]; 	//20部同类电影的上映日期
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据

		for (int i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					if(list.get(i).getDateOfIssue()!=null){
						String[] datelist = list.get(i).getDateOfIssue().split("-");	//根据横杠对日期进行分割
						date[j] = datelist[1];	//获得上映月份
					}else
						date[j] = "1";	
					j++;
				}
			}
		}
		return date;
	}
	
	//投资决策-电影名称
	public String[] allName(String type){
		String[] name = new String[20]; 	//20部同类电影的名称
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据

		for (int i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					name[j] = list.get(i).getName();	//获得名称
					j++;
				}
			}
		}
		return name;
	}

	//投资决策-主创团队
	public String[] allCreator(String type) {
		String[] creator = new String[20]; 	//20部同类电影的主创
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据

		for (int i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					creator[j] = list.get(i).getName()+"：         导演：" + list.get(i).getDirector() + "       制作：" + list.get(i).getFilmmaker() + "       主演："
							+ list.get(i).getActors() + "       出品：" + list.get(i).getProduction();	//获得主创
					j++;
				}
			}
		}
		return creator;
	}

	//投资决策-受众性别分布
	public int[] gender(String type){
		int[] gender = new int[2]; 	//20部同类电影的男女观众数
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据

		for(int i=0;i<gender.length;i++){
			gender[i]=0;
		}
		for (int i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					j++;
					if(list.get(i).getMale()!=null&&list.get(i).getFemale()!=null){
						gender[0]+=Float.parseFloat(list.get(i).getMale());		//计算男观众数
						gender[1]+=Float.parseFloat(list.get(i).getFemale());	//计算女观众数
					}
				}
			}
		}
		return gender;
	}
	
	//投资决策-受众年龄分布
	public float[] age(String type){
		float[] age = new float[5]; 	//20部同类电影各年龄段人数占比
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据

		for(int i=0;i<age.length;i++){
			age[i]=0;
		}
		int[] flag=new int[5];	//各年龄段已加和电影数
		for(int i=0;i<flag.length;i++){
			flag[i]=0;
		}
		for (int i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					j++;
					if(list.get(i).getAge0To15()!=null){	
						age[0]+=Float.parseFloat(list.get(i).getAge0To15());
						flag[0]++;
					}
					
					if(list.get(i).getAge16To25()!=null){
						age[1]+=Float.parseFloat(list.get(i).getAge16To25());
						flag[1]++;
					}
					if(list.get(i).getAge26To35()!=null){
						age[2]+=Float.parseFloat(list.get(i).getAge26To35());
						flag[2]++;
					}
					if(list.get(i).getAge36To45()!=null){
						age[3]+=Float.parseFloat(list.get(i).getAge36To45());
						flag[3]++;
					}
					if(list.get(i).getAge45()!=null){
						age[4]+=Float.parseFloat(list.get(i).getAge45());
						flag[4]++;
					}
				}
			}
		}
		for(int i=0;i<age.length;i++){
			if(flag[i]!=0){
				age[i]=age[i]/flag[i];	//计算各年龄段观众占比
			}
		}
		return age;
		
	}
	
	//投资决策-图片
	public String[] allPic(String type){
		String[] pic = new String[20]; 	//20部同类电影的图片
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据

		for (int i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					pic[j] = list.get(i).getImageName();	////获得图片名称
					j++;
				}
			}
		}
		return pic;
	}
	
	//投资决策-票房
	public float[] allBoxOffice(String type) {
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获取所有数据
		float[] allBoxOffice = new float[20];	//20部同类电影的票房
		int i=0,j=0;
		
		for(i=0;i<allBoxOffice.length;i++){
			allBoxOffice[i]=0;
		}
		
		for (i = 0, j = 0; i < list.size() && j < 20; i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					if(list.get(i).getBoxOffice()!=null){
						allBoxOffice[j] += Float.parseFloat(list.get(i).getBoxOffice());	//获得票房数
					}
					j++;
				}
			}
		}
		return allBoxOffice;
	}
	
	//主创推荐
	public String[] creatorResult(String type) {
		String id = "";	//电影id
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获得所有数据
		MovieBasic movieBasic;
		String[] creator = new String[4]; // 主演 导演 制作团队 特效公司
		float boxOffice = 0;	//票房数
		for (int i = 0; i < list.size(); i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type) && Float.parseFloat(list.get(i).getBoxOffice()) > boxOffice) {
					id = list.get(i).getId();	//获得该电影id
					boxOffice = Float.parseFloat(list.get(i).getBoxOffice());
				}
			}
		}
		movieBasic = getMovieBasicById(id);
		creator[0] = movieBasic.getActors();
		creator[1] = movieBasic.getDirector();
		creator[2] = movieBasic.getFilmmaker();
		creator[3] = movieBasic.getSpecialEffectsCompany();
		return creator;
	}

	
	
	//电影推荐系统-类型
	public MovieBasic[] recommendMovieType() {
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获得所有数据
		MovieBasic[] movieType = new MovieBasic[6];	//各类型电影
		// MovieBasic[] movieScore = new MovieBasic[6];
		// MovieBasic[][] movie = new MovieBasic[3][6]; //类型 票房 评分
		boolean[] flag = new boolean[6];
		for (int i = 0; i < flag.length; i++) {
			flag[i] = false;
		}
		for (int i = 0; i < list.size(); i++) {
			String[] typelist = list.get(i).getType().split(" ");
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals("动画") && flag[0] == false) {
					movieType[0] = list.get(i);	//动画电影
					flag[0] = true;
				} else if (typelist[p].equals("奇幻") && flag[1] == false) {
					movieType[1] = list.get(i);	//奇幻电影
					flag[1] = true;
				} else if (typelist[p].equals("冒险") && flag[2] == false) {
					movieType[2] = list.get(i);	//冒险电影
					flag[2] = true;
				} else if (typelist[p].equals("动作") && flag[3] == false) {
					movieType[3] = list.get(i);	//动作电影
					flag[3] = true;
				} else if (typelist[p].equals("科幻") && flag[4] == false) {
					movieType[4] = list.get(i);	//科幻电影
					flag[4] = true;
				} else if (typelist[p].equals("犯罪") && flag[5] == false) {
					movieType[5] = list.get(i);	//犯罪电影
					flag[5] = true;
				}
			}
		}
		// String imagePath = application.getRealPath("/"); // 获得当前的绝对路径
		return movieType;
	}

	//电影推荐系统-票房
	public MovieBasic[] recommendMovieBoxOffice() {
		MovieBasic[] movieBoxOffice = new MovieBasic[6];	//票房最高的前6部电影
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获得所有数据
		float[] boxOffice = new float[list.size()];	//所有电影票房数
		for (int i = 0; i < boxOffice.length; i++) {
			if(list.get(i).getBoxOffice()!=null){
				boxOffice[i] = Float.parseFloat(list.get(i).getBoxOffice());
			}
		}
		SortArray sortBoxOffice = new SortArray(boxOffice);	//根据票房数排序
		for (int i = sortBoxOffice.getArr().length - 1, j = 0; i >= sortBoxOffice.getArr().length - 6; i--, j++) {
			movieBoxOffice[j] = list.get(sortBoxOffice.getLabel()[i]);
		}
		return movieBoxOffice;
	}

	//电影推荐系统-口碑
	public MovieBasic[] recommendMovieScore() {
		MovieBasic[] movieScore = new MovieBasic[6];	//评分最高的前6部电影
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获得所有数据
		float[] score = new float[list.size()];	//所有电影评分数
		for (int i = 0; i < score.length; i++) {
			if(list.get(i).getDoubanScore()!=null){
				score[i] = Float.parseFloat(list.get(i).getDoubanScore());
			}
		}
		SortArray sortScore = new SortArray(score);	//根据评分数排序
		for (int i = sortScore.getArr().length - 1, j = 0; i >= sortScore.getArr().length - 6; i--, j++) {
			movieScore[j] = list.get(sortScore.getLabel()[i]);
		}
		return movieScore;
	}

	//预告片-电影
	public MovieBasic trailer(String type) {
		String name = "";	//电影名称
		List<MovieBasic> list = movieBasicDAO.getMovieBasic();	//获得所有数据
		MovieBasic movieBasic;
		for (int i = 0; i < list.size(); i++) {
			String[] typelist = list.get(i).getType().split(" ");	//根据空格对电影类型进行分割
			for (int p = 0; p < typelist.length; p++) {
				if (typelist[p].equals(type)) {
					movieBasic = list.get(i);	//获得相同类型电影
					// System.out.println(personService.getPersonById(id).getName());
					return movieBasic;
				}
			}
		}
		return null;
	}
	
	//预告片-名词
	public String[][] noun(MovieBasic movieBasic){
		String[][] noun=new String[2][];	//名词列表及出现次数
		if(movieBasic.getNoun()!=null){
			String[] nounList=movieBasic.getNoun().split(" ");	//根据空格对名词列表进行分割
			String[] nounNumList=movieBasic.getNounNum().split(" ");	//根据空格对出现次数进行分割
			noun[0]=new String[nounList.length];
			noun[1]=new String[nounNumList.length];
			for(int i=0;i<nounList.length;i++){
				noun[0][i]=nounList[i];	//名词
				noun[1][i]=nounNumList[i];	//出现次数
				
			}
		}else{
			noun[0]=new String[1];
			noun[1]=new String[1];
			noun[0][0]="无";
			noun[1][0]="0";
		}
		return noun;
	}
	
	//预告片-动词
	public String[][] verb(MovieBasic movieBasic){
		String[][] verb=new String[2][];	//动词列表及出现次数
		if(movieBasic.getNoun()!=null){
			String[] verbList=movieBasic.getVerb().split(" ");	//根据空格对动词列表进行分割
			String[] verbNumList=movieBasic.getVerbNum().split(" ");	//根据空格对出现次数进行分割
			verb[0]=new String[verbList.length];
			verb[1]=new String[verbNumList.length];
			for(int i=0;i<verbList.length;i++){
				verb[0][i]=verbList[i];	//动词
				verb[1][i]=verbNumList[i];	//出现次数
			}
		}else{
			verb[0]=new String[1];
			verb[1]=new String[1];
			verb[0][0]="无";
			verb[1][0]="0";
		}
		return verb;
	}
	
	//预告片-形容词
	public String[][] adjective(MovieBasic movieBasic){
		String[][] adjective=new String[2][];	//形容词列表及出现次数
		if(movieBasic.getNoun()!=null){
			String[] adjectiveList=movieBasic.getAdjective().split(" ");	//根据空格对形容词列表进行分割
			String[] adjectiveNumList=movieBasic.getAdjectiveNum().split(" ");	//根据空格对出现次数进行分割
			adjective[0]=new String[adjectiveList.length];
			adjective[1]=new String[adjectiveNumList.length];
			for(int i=0;i<adjectiveList.length;i++){
				adjective[0][i]=adjectiveList[i];	//形容词
				adjective[1][i]=adjectiveNumList[i];	//出现次数
			}
		}else{
			adjective[0]=new String[1];
			adjective[1]=new String[1];
			adjective[0][0]="无";
			adjective[1][0]="0";
		}
		return adjective;
	}
	
	//预告片-情感分析
	public String[] emotion(MovieBasic movieBasic){
		String[] emotionList=new String[12];	//情感指数列表
		if(movieBasic.getEmotion()!=null){
			emotionList=movieBasic.getEmotion().split(" ");	//根据空格对情感指数进行分割
		}
		return emotionList;
	}
	
}
