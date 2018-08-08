package com.jdl.css.calender.model.vo;

import org.springframework.stereotype.Component;
import java.io.*;
import java.util.Date;

@Component
public class CalenderVo {
		private int id;
		private String title;
		//private String cal_type;
		//private String cal_comType;
		private Date startDate;
		private Date endDate;
		
		public CalenderVo(){}
		
		public CalenderVo(int id, String title,Date startDate, Date endDate){
			this.id = id;
			this.title = title;
			this.startDate = startDate;
			this.endDate = endDate;
		}
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		/*public String getCal_type() {
			return cal_type;
		}
		public void setCal_type(String cal_type) {
			this.cal_type = cal_type;
		}
		public String getCal_comType() {
			return cal_comType;
		}
		public void setCal_comType(String cal_comType) {
			this.cal_comType = cal_comType;
		}*/
		public Date getStartDate() {
			return startDate;
		}
		public void setStartDate(Date startDate) {
			this.startDate = startDate;
		}
		public Date getEndDate() {
			return endDate;
		}
		public void setEndDate(Date endDate) {
			this.endDate = endDate;
		}
		
		
		@Override
		public String toString() {
			return "CalenderVo [id=" + id + ", title=" + title + ", startDate=" + startDate + ", endDate=" + endDate
					+ "]";
		}
		
}
