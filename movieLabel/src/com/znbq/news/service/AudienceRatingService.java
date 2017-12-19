/**
 * 
 */
package com.znbq.news.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.news.dao.AudienceRatingDAO;
import com.znbq.news.entity.AudienceRating;

/**
 * @author luyufan
 *
 */
@Service
@Transactional
public class AudienceRatingService {
	private List<AudienceRating> _rawdata;
	@Autowired public AudienceRatingDAO audienceDAO;
	public void getAudienceRatingDataAll(String year,String month,String day){
		_rawdata=audienceDAO.getAudienceRatingAll(year, month, day);
	}
	
	private List<String> _tvname;
	private List<String> _cityname;
	private List<double[]> _ratedata;
	
	public String makeTVNamesStr(){
		String _TVName="";
		if(_rawdata==null){
			_TVName="";
		}
		else{
			_getTVNameList();
			for(String s:_tvname){
				_TVName+=s+"#";
			}
			_TVName=_TVName.substring(0, _TVName.length()-1);
		}
		return _TVName;
	}
	
	public String makeCityNamesStr(){
		String _CityName="";
		if(_rawdata==null){
			_CityName="";
		}
		else{
			_getCityNameList();
			for(String s:_cityname){
				_CityName+=s+"#";
			}
			_CityName=_CityName.substring(0, _CityName.length()-1);
		}
		return _CityName;
	}
	
	public String makeRateData(){
		String _RateDate="";
		if(_rawdata==null){
			_RateDate="";
		}
		else{
			_getRateDate();
			for(double[] ___r:_ratedata){
				for(double _d:___r){
					if(_d==-1){
						_RateDate+=" "+"#";
					}
					else{
						_RateDate+=_d+"#";
					}
				}
				//去除多余的#
				_RateDate=_RateDate.substring(0, (_RateDate.length()-1));
				_RateDate+="$";
			}
			//去除多余的$
			_RateDate=_RateDate.substring(0, (_RateDate.length()-1));
		}
		return _RateDate;
	}
	
	private void _getTVNameList(){
		_tvname=new ArrayList<String>();
		for(AudienceRating _r:_rawdata){
			if(!_tvname.contains(_r.getTVname())){
				_tvname.add(_r.getTVname());
			}
		}
	}
	
	private void _getCityNameList(){
		_cityname=new ArrayList<String>();
		for(AudienceRating _r:_rawdata){
			if(!_cityname.contains(_r.getRatecity())){
				_cityname.add(_r.getRatecity());
			}
		}
	}
	
	private void _getRateDate(){
		_ratedata=new ArrayList<double[]>();
		for(String _tn:_tvname){
			double[] __rd=new double[_cityname.size()];
			int __index=0;
			for(String _cn:_cityname){
				for(int i=0;i<_rawdata.size();i++){
					if(_rawdata.get(i).getTVname().equals(_tn)&&_rawdata.get(i).getRatecity().equals(_cn)){
						__rd[__index]=_rawdata.get(i).getAudienceRate();
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
			_ratedata.add(__rd);
		}
	}
}
