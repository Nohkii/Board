package main.board.notice;

import com.google.protobuf.Timestamp;

import lombok.Data;
@Data
public class NoticeVO {
	
	private int board_id;
	private String writer;
	private int viewcount;
	private String title;
	private String contents;
	private Timestamp regdate;
	private Timestamp updatedate;
	private Timestamp deletedate;

}
