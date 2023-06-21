package main.board.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.cj.protocol.x.Notice;

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
	public Map index(NoticeVO vo) {
		// 총개수 구하기
		int totalCount = mapper.count(vo);
		// 총페이지수 구하기
		int totalPage = totalCount / vo.getRowPerPage();
		if (totalCount % vo.getRowPerPage() > 0)
			totalPage++;
		// startIdx 구하기
		int startIdx = (vo.getPage() - 1) * vo.getRowPerPage();
		vo.setStartIdx(startIdx);
		// 목록 조회
		System.out.println(vo.getMemberno());
		List<NoticeVO> list = mapper.list(vo);

		// 페이지관련 처리
		int endPage = (int) Math.ceil(vo.getPage() / 10.0) * 10;
		int startPage = endPage - 9;
		if (endPage > totalPage)
			endPage = totalPage;
		boolean prev = startPage > 1 ? true : false;
		boolean next = totalPage > endPage ? true : false;
		// map저장
		Map map = new HashMap();
		map.put("totalCount", totalCount);
		map.put("totalPage", totalPage);
		map.put("list", list);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("prev", prev);
		map.put("next", next);

		return map;

	}
}
