/**
 * 
 */
package com.znbq.news.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.news.dao.NewsHotTopicDAO;
import com.znbq.news.entity.NewsHotTopic;

/**
 * @author luyufan
 *
 */
@Service
@Transactional
public class NewsHotTopicService {
	private List<NewsHotTopic> _rawdata;
	@Autowired public NewsHotTopicDAO hottopicDAO;
	
	/**
	 * this function is used to get a primitive list of NewsHotTopic by calling a function from NewsHotTopicDAO
	 * @param year1
	 * @param month1
	 * @param year2
	 * @param month2
	 */
	public void getAudienceRatingDataAll(String year1,String month1,String year2,String month2){
		_rawdata=hottopicDAO.getNewsHotTopicAll(year1, month1, year2, month2);
	}
	
	private List<String> _topic;
	private List<String> _label;
	private List<double[]> _labeldata;
	
	/**
	 * this function is used to generate a string information for the topic of the NewsHotTopic
	 * @return String
	 */
	public String makeTopicStr(){
		String _topicstr="";
		if(_rawdata==null){
			_topicstr="";
		}
		else{
			_getTopicList();
			for(String s:_topic){
				_topicstr+=s+"#";
			}
			_topicstr=_topicstr.substring(0, _topicstr.length()-1);
		}
		return _topicstr;
	}
	
	/**
	 *  this function is used to generate a string information for the label of the NewsHotTopic
	 * @return
	 */
	public String makeLabelStr(){
		String _labelstr="";
		if(_rawdata==null){
			_labelstr="";
		}
		else{
			_getLabelList();
			for(String s:_label){
				_labelstr+=s+"#";
			}
			_labelstr=_labelstr.substring(0, _labelstr.length()-1);
		}
		return _labelstr;
	}
	
	/**
	 *  this function is used to generate a string information for the value of the label of the NewsHotTopic
	 * @return String 
	 */
	public String makeTopicAndLabelDataStr(){
		String _labelDate="";
		if(_rawdata==null){
			_labelDate="";
		}
		else{
			_getTopicAndLabelDate();
			for(double[] ___r:_labeldata){
				for(double _d:___r){
					if(_d==-1){
						_labelDate+=" "+"#";
					}
					else{
						_labelDate+=_d+"#";
					}
				}
				//去除多余的#
				_labelDate=_labelDate.substring(0, (_labelDate.length()-1));
				_labelDate+="$";
			}
			//去除多余的$
			_labelDate=_labelDate.substring(0, (_labelDate.length()-1));
		}
		return _labelDate;
	}
	
	/**
	 * this private function is to generate a list of distinct topic names
	 */
	private void _getTopicList(){
		_topic=new ArrayList<String>();
		for(NewsHotTopic _r:_rawdata){
			if(!_topic.contains(_r.getTopic())){
				_topic.add(_r.getTopic());
			}
		}
	}
	
	/**
	 * this private function is to generate a list of distinct label names
	 */
	private void _getLabelList(){
		_label=new ArrayList<String>();
		_getTopicList();
		for(String _t:_topic){
			for(NewsHotTopic _r:_rawdata){
				if(!_label.contains(_r.getLabel())&&_r.getTopic().equals(_t)){
					_label.add(_r.getLabel());
					//对于可能的重复值可以寻求不同的策略
				}
			}
		}
	}
	
	/**
	 * this private function is to generate a list of double arrays for the value of different labels
	 */
	private void _getTopicAndLabelDate(){
		_labeldata=new ArrayList<double[]>();
		for(String _tn:_topic){
			double[] __rd=new double[_label.size()];
			int __index=0;
			for(String _cn:_label){
				for(int i=0;i<_rawdata.size();i++){
					if(_rawdata.get(i).getTopic().equals(_tn)&&_rawdata.get(i).getLabel().equals(_cn)){
						__rd[__index]=_rawdata.get(i).getHotnum();
						__index++;
						break;
					}
					else if(i==(_rawdata.size()-1)){
						__rd[__index]=-1;
						__index++;
						break;
					}
					else{
						continue;
					}
				}
			}
			_labeldata.add(__rd);
		}
	}
}
