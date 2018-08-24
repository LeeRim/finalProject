package com.jdl.css.calender.model.vo;

import org.springframework.stereotype.Component;
import java.io.*;
import java.sql.Date;

@Component
public class CalenderVo {
		private int id;
		private String title;
		private String cal_type;
		private String cal_comType;
		private Date startDate;
		private Date endDate;
		private int startYear;
		private int startMonth;
		private int startDay;
		private int endYear;
		private int endMonth;
		private int endDay;
		private String background;
		private int cKeyFk;
		
		
		public CalenderVo(){}

		
		public CalenderVo(int id, String title, String cal_type, String cal_comType, Date startDate, Date endDate,
				int startYear, int startMonth, int startDay, int endYear, int endMonth, int endDay, String background,
				int cKeyFk) {
			this.id = id;
			this.title = title;
			this.cal_type = cal_type;
			this.cal_comType = cal_comType;
			this.startDate = startDate;
			this.endDate = endDate;
			this.startYear = startYear;
			this.startMonth = startMonth;
			this.startDay = startDay;
			this.endYear = endYear;
			this.endMonth = endMonth;
			this.endDay = endDay;
			this.background = background;
			this.cKeyFk = cKeyFk;
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


		public String getCal_type() {
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
		}


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


		public int getStartYear() {
			return startYear;
		}


		public void setStartYear(int startYear) {
			this.startYear = startYear;
		}


		public int getStartMonth() {
			return startMonth;
		}


		public void setStartMonth(int startMonth) {
			this.startMonth = startMonth;
		}


		public int getStartDay() {
			return startDay;
		}


		public void setStartDay(int startDay) {
			this.startDay = startDay;
		}


		public int getEndYear() {
			return endYear;
		}


		public void setEndYear(int endYear) {
			this.endYear = endYear;
		}


		public int getEndMonth() {
			return endMonth;
		}


		public void setEndMonth(int endMonth) {
			this.endMonth = endMonth;
		}


		public int getEndDay() {
			return endDay;
		}


		public void setEndDay(int endDay) {
			this.endDay = endDay;
		}


		public String getBackground() {
			return background;
		}


		public void setBackground(String background) {
			this.background = background;
		}


		public int getcKeyFk() {
			return cKeyFk;
		}


		public void setcKeyFk(int cKeyFk) {
			this.cKeyFk = cKeyFk;
		}


		@Override
		public String toString() {
			return "CalenderVo [id=" + id + ", title=" + title + ", cal_type=" + cal_type + ", cal_comType="
					+ cal_comType + ", startDate=" + startDate + ", endDate=" + endDate + ", startYear=" + startYear
					+ ", startMonth=" + startMonth + ", startDay=" + startDay + ", endYear=" + endYear + ", endMonth="
					+ endMonth + ", endDay=" + endDay + ", background=" + background + ", cKeyFk=" + cKeyFk + "]";
		}
		
		

		
}
