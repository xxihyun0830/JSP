package board.model;

import java.sql.*;

public class boardVO {
	
	private int board_Id;
	private String board_Name;
	private String board_Title;
	private String board_Content;
	private Timestamp board_Date;
	private int board_Hit;
	
	public boardVO() {}
	
	public boardVO(int board_Id, String board_Name, String board_Title, String board_Content, Timestamp board_Date, int board_Hit ) {
		super();
		this.board_Id = board_Id;
		this.board_Name = board_Name;
		this.board_Title = board_Title;
		this.board_Content = board_Content;
		this.board_Date = board_Date;
		this.board_Hit = board_Hit;
		
	}

	public void setBoard_Id(int board_Id) {
		this.board_Id = board_Id;
	}


	public void setBoard_Name(String board_Name) {
		this.board_Name = board_Name;
	}


	public void setBoard_Title(String board_Title) {
		this.board_Title = board_Title;
	}


	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}


	public void setBoard_Date(Timestamp board_Date) {
		this.board_Date = board_Date;
	}


	public void setBoard_Hit(int board_Hit) {
		this.board_Hit = board_Hit;
	}


	public int getBoard_Id() {
		return board_Id;
	}


	public String getBoard_Name() {
		return board_Name;
	}


	public String getBoard_Title() {
		return board_Title;
	}


	public String getBoard_Content() {
		return board_Content;
	}


	public Timestamp getBoard_Date() {
		return board_Date;
	}


	public int getBoard_Hit() {
		return board_Hit;
	}



}
