package com.znbq.movie.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.znbq.movie.service.MovieBasicService;
import com.znbq.movie.service.MovieIpService;
import com.znbq.movie.service.PlotBasicService;
import com.znbq.movie.entity.MovieBasic;
import com.znbq.movie.entity.PlotBasic;
import com.znbq.movie.entity.StarringInfo;
import com.znbq.movie.service.DirectorInfoService;
import com.znbq.movie.service.ScreenwriterInfoService;
import com.znbq.movie.service.StarringInfoService;
/**
 * Movie模块控制器，实现了对网页中的name="movie"标签的操作
 * 方法通过超链接方式进行传递
 */

@Controller
@RequestMapping(value="/movie")
public class MovieController {
	
	@Autowired public MovieBasicService movieBasicService;
	@Autowired public MovieIpService movieIpService;
	@Autowired public DirectorInfoService directorInfoService;
	@Autowired public ScreenwriterInfoService screenwriterInfoService;
	@Autowired public StarringInfoService starringInfoService;
	@Autowired public PlotBasicService plotBasicService;

	
	//实现对网页中的name="movie/creator"标签的操作
	@RequestMapping(value="/creator")
	public String creator()
	{
		return "movie/creator";
	}
	
	//实现对网页中的name="movie/creator-result"标签的操作
	@RequestMapping(value="/creator-result")
	public String creatorResult(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException  {
		String type=request.getParameter("type");	//接收前端传过来的类型
		String[] creator = movieBasicService.creatorResult(type);	//creator数组分别保存类型为type的主演 导演 制作团队 特效公司
		request.setAttribute("actors", creator[0]);	
		request.setAttribute("directors", creator[1]);
		request.setAttribute("filmmaker", creator[2]);
		request.setAttribute("specialEffectsCompany", creator[3]);
		return "movie/creator-result";
	}
	
	//实现对网页中的name="movie/investment"标签的操作
	@RequestMapping(value="/investment")
	public String investment()
	{
		return "movie/investment";
	}
	
	//实现对网页中的name="movie/invest-result"标签的操作
	@RequestMapping(value="/invest-result")
	public String investResult(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException  {
		String type=request.getParameter("type");	//接收前端传过来的类型
		float averageBoxOffice=movieBasicService.averageBoxOffice(type);	//前20部类型为type的电影的平均票房
		float averageScore=movieBasicService.averageScore(type);	//前20部类型为type的电影的平均评分
		String[] allDate=movieBasicService.allDate(type);	//前20部类型为type的电影的上档日期
		String[] allCreator=movieBasicService.allCreator(type);	//前20部类型为type的电影的主创
		String[] allName=movieBasicService.allName(type);	//前20部类型为type的电影的名称
		int[] gender=movieBasicService.gender(type);	//前20部类型为type的电影的受众性别分布
		float[] age=movieBasicService.age(type);	//前20部类型为type的电影的受众年龄分布
		float[] allBoxOffice=movieBasicService.allBoxOffice(type);	//前20部类型为type的电影的票房
		String[] allPic=movieBasicService.allPic(type);	//前20部类型为type的电影的图片
		request.setAttribute("boxOffice", averageBoxOffice);
		request.setAttribute("score", averageScore);
		request.setAttribute("date", allDate);
		request.setAttribute("name", allName);
		request.setAttribute("creator", allCreator);
		request.setAttribute("gender", gender);
		request.setAttribute("age", age);
		request.setAttribute("pic", allPic);
		request.setAttribute("allBoxOffice", allBoxOffice);
		return "movie/invest-result";
	}
	
	//实现对网页中的name="movie/movie"标签的操作
	@RequestMapping(value="/movie")
	public String movie(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException  {
		List<MovieBasic> movie=movieBasicService.getMovieBasic();	//获得movieBasic的全部数据
		String[] movieName=new String[movie.size()];	//电影名称
		int[] movieRaters=new int[movie.size()];	//豆瓣评分人数
		for(int i=0;i<movieName.length;i++){
			movieName[i]=movie.get(i).getName();
			if(movie.get(i).getDoubanNumOfRaters()!=null){
				movieRaters[i]=Integer.parseInt(movie.get(i).getDoubanNumOfRaters());
			}else{
				movieRaters[i]=0;
			}
		}
		request.setAttribute("movieName", movieName);
		request.setAttribute("movieRaters", movieRaters);
		return "movie/movie";
	}
	
	//实现对网页中的name="movie/recommend"标签的操作
	@RequestMapping(value="/recommend")
	public String recommend(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException  {
		MovieBasic[] movieType=movieBasicService.recommendMovieType();	//各类型的电影
		MovieBasic[] movieBoxOffice=movieBasicService.recommendMovieBoxOffice();	//票房最高的6部电影
		MovieBasic[] movieScore=movieBasicService.recommendMovieScore();	//评分最高的6部电影
		StarringInfo[] actors=starringInfoService.recommendActors();	//前6个演员
		String[] movieTypeName=new String[6];	//传递参数用各类型电影名称
		String[] movieBoxOfficeName=new String[6];	//传递参数用票房最高电影名称
		String[] movieScoreName=new String[6];	//传递参数用评分最高电影名称
		String[] actorsName=new String[6];	//传递参数用演员名称
		String[] movieTypePic=new String[6];	//传递参数用各类型电影图片
		String[] movieBoxOfficePic=new String[6];	//传递参数用票房最高电影图片
		String[] movieScorePic=new String[6];	//传递参数用评分最高电影图片
		String[] actorsPic=new String[6];	//传递参数用演员图片
		String[] actorsRepresentativeMovie=new String[6];	//传递参数用演员代表作品
		String[] movieNumOfBoxOffice=new String[6];	//传递参数用电影票房
		String[] movieNumOfScore=new String[6];	//传递参数用电影评分
		for(int i=0;i<6;i++){
			movieTypeName[i]="movieTypeName"+i;
			movieTypePic[i]="movieTypePic"+i;
			movieBoxOfficeName[i]="movieBoxOfficeName"+i;
			movieBoxOfficePic[i]="movieBoxOfficePic"+i;
			movieScoreName[i]="movieScoreName"+i;
			movieScorePic[i]="movieScorePic"+i;
			actorsName[i]="actorsName"+i;
			actorsPic[i]="actorsPic"+i;
			movieNumOfBoxOffice[i]="movieNumOfBoxOffice"+i;
			movieNumOfScore[i]="movieNumOfScore"+i;
			actorsRepresentativeMovie[i]="actorsRepresentativeMovie"+i;
			request.setAttribute(movieTypeName[i], movieType[i].getName());
			request.setAttribute(movieBoxOfficeName[i], movieBoxOffice[i].getName());
			request.setAttribute(movieScoreName[i], movieScore[i].getName());
			request.setAttribute(actorsName[i], actors[i].getActorNameChinese());
			request.setAttribute(movieTypePic[i], movieType[i].getImageName());
			request.setAttribute(movieBoxOfficePic[i], movieBoxOffice[i].getImageName());
			request.setAttribute(movieScorePic[i], movieScore[i].getImageName());
			request.setAttribute(actorsPic[i], actors[i].getPic());
			request.setAttribute(actorsRepresentativeMovie[i], actors[i].getRepresentativeMovie());
			request.setAttribute(movieNumOfBoxOffice[i], movieBoxOffice[i].getBoxOffice());;
			request.setAttribute(movieNumOfScore[i],movieScore[i].getDoubanScore());
		}
		return "movie/recommend";
	}
	
	//实现对网页中的name="movie/screen"标签的操作
	@RequestMapping(value="/screen")
	public String screen()
	{
		return "movie/screen";
	}
	
	//实现对网页中的name="movie/screen-result"标签的操作
	@RequestMapping(value="/screen-result")
	public String screenResult(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException  {
		request.setAttribute("movieBasicService", movieBasicService);
		return "movie/screen-result";
	}
	
	//实现对网页中的name="movie/theme"标签的操作
	@RequestMapping(value="/theme")
	public String theme()
	{
		return "movie/theme";
	}
	
	//实现对网页中的name="movie/trailer"标签的操作
	@RequestMapping(value="/trailer")
	public String trailer()
	{
		return "movie/trailer";
	}
	
	//实现对网页中的name="movie/trailer-result"标签的操作
	@RequestMapping(value="/trailer-result")
	public String trailerResult(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException  {
		String type=request.getParameter("type");	//接收前端传过来的类型
		MovieBasic movieBasic=movieBasicService.trailer(type);	//类型为type的电影
		if(movieBasic!=null){
			request.setAttribute("name", movieBasic.getName());
			request.setAttribute("director", movieBasic.getDirector());
			request.setAttribute("actors", movieBasic.getActors());
			request.setAttribute("type", movieBasic.getType());
			request.setAttribute("topic", movieBasic.getTopic());
			request.setAttribute("fansMarketing", movieBasic.getFansMarketing());
			request.setAttribute("supervisor", movieBasic.getSupervisor());
			request.setAttribute("noun", movieBasicService.noun(movieBasic));
			request.setAttribute("verb", movieBasicService.verb(movieBasic));
			request.setAttribute("adjective", movieBasicService.adjective(movieBasic));
			request.setAttribute("emotion", movieBasicService.emotion(movieBasic));
		}
		
		return "movie/trailer-result";
	}
	
	@RequestMapping(value={"/plot","/plot/"})
	public String plotIndex(Model model)
	{
		//List<PlotBasic> plotList=plotBasicService.getAllPlot();
		List<PlotBasic> plotList=plotBasicService.getPlotByPage(0, 20);
		model.addAttribute("list",plotList);
		return "movie/plot-index";
	}
	
	@RequestMapping(value="/plot/edit/{num}")
	public String plotEdit(@PathVariable(value="num") String plotid,Model model)
	{
		PlotBasic plot =plotBasicService.getPlotById(plotid);
		model.addAttribute("plot",plot);
		return "movie/plot-edit";
	}
	
	@RequestMapping(value="/plot/add")
	public String plotNew(Model model)
	{
		return "movie/plot-new";
	}
	
	@RequestMapping(value="/plot/{num}")
	public String plotShow(@PathVariable(value="num") String plotid,Model model)
	{
		PlotBasic plot =plotBasicService.getPlotById(plotid);
		model.addAttribute("plot",plot);
		return "movie/plot-show";
	}
	
	@RequestMapping(value="/plot/type")
	public String plotType(Model model)
	{
		return "movie/plot-type";
	}
	
	@RequestMapping(value="/plot/save")
	public String saveEdit(HttpServletRequest request,PlotBasic plot,int actiontype,@RequestParam(value="pic",required = false) CommonsMultipartFile file) throws IllegalStateException, IOException
	{
		//图片文件处理，
		String servletRoot=request.getSession().getServletContext().getRealPath("");
		String uploadImg=plotBasicService.uploadTrueUrl(servletRoot);
		String fileName=file.getOriginalFilename();
		//为空需要设置默认图片
		String newFileName = plotBasicService.uploadPicUrl(fileName);
		String newPath=uploadImg+newFileName;
		//System.out.println("trueurl："+uploadImg);
		//System.out.println("fileName："+fileName);
		//System.out.println(newPath);
		//System.out.println(System.getProperty("user.dir"));
		//System.out.println(request.getRequestURI());
		//System.out.println(request.getRequestURL());
		File newFile=new File(newPath);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        //System.out.println(file.isEmpty());
		if(actiontype==1)
		{
			//System.out.println("nice");
			//System.out.println(plot.getAuthor()+" "+plot.getType());
			if(file.isEmpty())
			{
				//默认图片
			}
			else{
				plot.setPicurl(newFileName);
			}
			//plot.setAuthor((String) request.getSession().getAttribute("username"));
			plot.setAuthor("none");
			plot.setAllowedit("1");
			plotBasicService.editPlot(plot);
		}
		else if(actiontype==0)
		{
			//检查网页提交的内容
			//System.out.println(plot.checkEmpty());
			if(!plot.checkEmpty())
			{
				if(file.isEmpty())
				{
					//默认图片
				}
				else{
					plot.setPicurl(newFileName);
				}
				//plot.setAuthor((String) request.getSession().getAttribute("username"));
				plot.setAuthor("none");
				plot.setAllowedit("1");
				plotBasicService.saveNewPlot(plot);
				System.out.println(plot.getId());
			}
		}
		return "redirect:"+plot.getId();
	}
}
