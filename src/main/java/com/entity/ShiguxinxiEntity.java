package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 事故信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-02-26 20:12:43
 */
@TableName("shiguxinxi")
public class ShiguxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShiguxinxiEntity() {
		
	}
	
	public ShiguxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 事故名称
	 */
					
	private String shigumingcheng;
	
	/**
	 * 事故类型
	 */
					
	private String shiguleixing;
	
	/**
	 * 账号
	 */
					
	private String zhanghao;
	
	/**
	 * 车主姓名
	 */
					
	private String chezhuxingming;
	
	/**
	 * 车牌
	 */
					
	private String chepai;
	
	/**
	 * 手机
	 */
					
	private String shouji;
	
	/**
	 * 发生原因
	 */
					
	private String fashengyuanyin;
	
	/**
	 * 处理结果
	 */
					
	private String chulijieguo;
	
	/**
	 * 事故时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date shigushijian;
	
	/**
	 * 处理警察
	 */
					
	private String chulijingcha;
	
	/**
	 * 天气
	 */
					
	private String tianqi;
	
	/**
	 * 处罚金额
	 */
					
	private Integer chufajine;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：事故名称
	 */
	public void setShigumingcheng(String shigumingcheng) {
		this.shigumingcheng = shigumingcheng;
	}
	/**
	 * 获取：事故名称
	 */
	public String getShigumingcheng() {
		return shigumingcheng;
	}
	/**
	 * 设置：事故类型
	 */
	public void setShiguleixing(String shiguleixing) {
		this.shiguleixing = shiguleixing;
	}
	/**
	 * 获取：事故类型
	 */
	public String getShiguleixing() {
		return shiguleixing;
	}
	/**
	 * 设置：账号
	 */
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
	/**
	 * 设置：车主姓名
	 */
	public void setChezhuxingming(String chezhuxingming) {
		this.chezhuxingming = chezhuxingming;
	}
	/**
	 * 获取：车主姓名
	 */
	public String getChezhuxingming() {
		return chezhuxingming;
	}
	/**
	 * 设置：车牌
	 */
	public void setChepai(String chepai) {
		this.chepai = chepai;
	}
	/**
	 * 获取：车牌
	 */
	public String getChepai() {
		return chepai;
	}
	/**
	 * 设置：手机
	 */
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
	/**
	 * 设置：发生原因
	 */
	public void setFashengyuanyin(String fashengyuanyin) {
		this.fashengyuanyin = fashengyuanyin;
	}
	/**
	 * 获取：发生原因
	 */
	public String getFashengyuanyin() {
		return fashengyuanyin;
	}
	/**
	 * 设置：处理结果
	 */
	public void setChulijieguo(String chulijieguo) {
		this.chulijieguo = chulijieguo;
	}
	/**
	 * 获取：处理结果
	 */
	public String getChulijieguo() {
		return chulijieguo;
	}
	/**
	 * 设置：事故时间
	 */
	public void setShigushijian(Date shigushijian) {
		this.shigushijian = shigushijian;
	}
	/**
	 * 获取：事故时间
	 */
	public Date getShigushijian() {
		return shigushijian;
	}
	/**
	 * 设置：处理警察
	 */
	public void setChulijingcha(String chulijingcha) {
		this.chulijingcha = chulijingcha;
	}
	/**
	 * 获取：处理警察
	 */
	public String getChulijingcha() {
		return chulijingcha;
	}
	/**
	 * 设置：天气
	 */
	public void setTianqi(String tianqi) {
		this.tianqi = tianqi;
	}
	/**
	 * 获取：天气
	 */
	public String getTianqi() {
		return tianqi;
	}
	/**
	 * 设置：处罚金额
	 */
	public void setChufajine(Integer chufajine) {
		this.chufajine = chufajine;
	}
	/**
	 * 获取：处罚金额
	 */
	public Integer getChufajine() {
		return chufajine;
	}
	/**
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
