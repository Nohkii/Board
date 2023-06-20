package main.board.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeBoardService {

	@Autowired
	NoticeMapper mapper;

	public boolean insert(NoticeVO vo) {
		return mapper.insert(vo) > 0 ? true : false;
	}

	public boolean update(NoticeVO vo) {
		return mapper.insert(vo) > 0 ? true : false;
	}

	public boolean edit(NoticeVO vo) {
		return mapper.insert(vo) > 0 ? true : false;
	}

	public boolean delete(NoticeVO vo) {
		return mapper.insert(vo) > 0 ? true : false;
	}

	public boolean view(NoticeVO vo) {
		return mapper.insert(vo) > 0 ? true : false;
	}
	
	// 페이징 추가하기

}
