/**
 * 
 */
package com.znbq.news.entity;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * @author luyufan
 *
 */
@Entity
@Table(name="news_areasearchmark")
public class AreaSearchMark implements Serializable {
	private String year;
	private String month;
	private String day;
	private int province_bj;
	private int	province_tj;
	private int province_sh;
	private int province_cq;
	private int province_heb;
	private int province_hen;
	private int province_yn;
	private int province_ln;
	private int province_hlj;
	private int province_hun;
	private int province_ah;
	private int province_sd;
	private int province_xj;
	private int province_js;
	private int province_zj;
	private int province_jx;
	private int province_hub;
	private int province_gx;
	private int province_gs;
	private int province_sx;//山西
	private int province_nmg;
	private int province_ssx;
	private int province_jl;
	private int province_fj;
	private int province_gz;
	private int province_gd;
	private int province_qh;
	private int province_xz;
	private int province_sc;
	private int province_nx;
	private int province_han;//海南
	private int province_tw;
	private int province_xg;
	private int province_am;
	
	public AreaSearchMark() {
		super();
	}
	
	@Id
	@Column(name="year",nullable=false,length=4)
	@GeneratedValue(generator="genyear")
	@GenericGenerator(name="genyear",strategy="assigned")
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	@Id
	@Column(name="month",nullable=false,length=2)
	@GeneratedValue(generator="genmonth")
	@GenericGenerator(name="genmonth",strategy="assigned")
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	
	@Id
	@Column(name="day",nullable=false,length=4)
	@GeneratedValue(generator="genday")
	@GenericGenerator(name="genday",strategy="assigned")
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	@Column(name="北京")
	public int getProvince_bj() {
		return province_bj;
	}
	@Column(name="天津")
	public int getProvince_tj() {
		return province_tj;
	}
	@Column(name="上海")
	public int getProvince_sh() {
		return province_sh;
	}
	@Column(name="重庆")
	public int getProvince_cq() {
		return province_cq;
	}
	@Column(name="河北")
	public int getProvince_heb() {
		return province_heb;
	}
	@Column(name="河南")
	public int getProvince_hen() {
		return province_hen;
	}
	@Column(name="云南")
	public int getProvince_yn() {
		return province_yn;
	}
	@Column(name="辽宁")
	public int getProvince_ln() {
		return province_ln;
	}
	@Column(name="黑龙江")
	public int getProvince_hlj() {
		return province_hlj;
	}
	@Column(name="湖南")
	public int getProvince_hun() {
		return province_hun;
	}
	@Column(name="安徽")
	public int getProvince_ah() {
		return province_ah;
	}
	@Column(name="山东")
	public int getProvince_sd() {
		return province_sd;
	}
	@Column(name="新疆")
	public int getProvince_xj() {
		return province_xj;
	}
	@Column(name="江苏")
	public int getProvince_js() {
		return province_js;
	}
	@Column(name="浙江")
	public int getProvince_zj() {
		return province_zj;
	}
	@Column(name="江西")
	public int getProvince_jx() {
		return province_jx;
	}
	@Column(name="湖北")
	public int getProvince_hub() {
		return province_hub;
	}
	@Column(name="广西")
	public int getProvince_gx() {
		return province_gx;
	}
	@Column(name="甘肃")
	public int getProvince_gs() {
		return province_gs;
	}
	@Column(name="山西")
	public int getProvince_sx() {
		return province_sx;
	}
	@Column(name="内蒙古")
	public int getProvince_nmg() {
		return province_nmg;
	}
	@Column(name="陕西")
	public int getProvince_ssx() {
		return province_ssx;
	}
	@Column(name="吉林")
	public int getProvince_jl() {
		return province_jl;
	}
	@Column(name="福建")
	public int getProvince_fj() {
		return province_fj;
	}
	@Column(name="贵州")
	public int getProvince_gz() {
		return province_gz;
	}
	@Column(name="广东")
	public int getProvince_gd() {
		return province_gd;
	}
	@Column(name="青海")
	public int getProvince_qh() {
		return province_qh;
	}
	@Column(name="西藏")
	public int getProvince_xz() {
		return province_xz;
	}
	@Column(name="四川")
	public int getProvince_sc() {
		return province_sc;
	}
	@Column(name="宁夏")
	public int getProvince_nx() {
		return province_nx;
	}
	@Column(name="海南")
	public int getProvince_han() {
		return province_han;
	}
	@Column(name="台湾")
	public int getProvince_tw() {
		return province_tw;
	}
	@Column(name="香港")
	public int getProvince_xg() {
		return province_xg;
	}
	@Column(name="澳门")
	public int getProvince_am() {
		return province_am;
	}

	public void setProvince_bj(int province_bj) {
		this.province_bj = province_bj;
	}

	public void setProvince_tj(int province_tj) {
		this.province_tj = province_tj;
	}

	public void setProvince_sh(int province_sh) {
		this.province_sh = province_sh;
	}

	public void setProvince_cq(int province_cq) {
		this.province_cq = province_cq;
	}

	public void setProvince_heb(int province_heb) {
		this.province_heb = province_heb;
	}

	public void setProvince_hen(int province_hen) {
		this.province_hen = province_hen;
	}

	public void setProvince_yn(int province_yn) {
		this.province_yn = province_yn;
	}

	public void setProvince_ln(int province_ln) {
		this.province_ln = province_ln;
	}

	public void setProvince_hlj(int province_hlj) {
		this.province_hlj = province_hlj;
	}

	public void setProvince_hun(int province_hun) {
		this.province_hun = province_hun;
	}

	public void setProvince_ah(int province_ah) {
		this.province_ah = province_ah;
	}

	public void setProvince_sd(int province_sd) {
		this.province_sd = province_sd;
	}

	public void setProvince_xj(int province_xj) {
		this.province_xj = province_xj;
	}

	public void setProvince_js(int province_js) {
		this.province_js = province_js;
	}

	public void setProvince_zj(int province_zj) {
		this.province_zj = province_zj;
	}

	public void setProvince_jx(int province_jx) {
		this.province_jx = province_jx;
	}

	public void setProvince_hub(int province_hub) {
		this.province_hub = province_hub;
	}

	public void setProvince_gx(int province_gx) {
		this.province_gx = province_gx;
	}

	public void setProvince_gs(int province_gs) {
		this.province_gs = province_gs;
	}

	public void setProvince_sx(int province_sx) {
		this.province_sx = province_sx;
	}

	public void setProvince_nmg(int province_nmg) {
		this.province_nmg = province_nmg;
	}

	public void setProvince_ssx(int province_ssx) {
		this.province_ssx = province_ssx;
	}

	public void setProvince_jl(int province_jl) {
		this.province_jl = province_jl;
	}

	public void setProvince_fj(int province_fj) {
		this.province_fj = province_fj;
	}

	public void setProvince_gz(int province_gz) {
		this.province_gz = province_gz;
	}

	public void setProvince_gd(int province_gd) {
		this.province_gd = province_gd;
	}

	public void setProvince_qh(int province_qh) {
		this.province_qh = province_qh;
	}

	public void setProvince_xz(int province_xz) {
		this.province_xz = province_xz;
	}

	public void setProvince_sc(int province_sc) {
		this.province_sc = province_sc;
	}

	public void setProvince_nx(int province_nx) {
		this.province_nx = province_nx;
	}

	public void setProvince_han(int province_han) {
		this.province_han = province_han;
	}

	public void setProvince_tw(int province_tw) {
		this.province_tw = province_tw;
	}

	public void setProvince_xg(int province_xg) {
		this.province_xg = province_xg;
	}

	public void setProvince_am(int province_am) {
		this.province_am = province_am;
	}
	
}
