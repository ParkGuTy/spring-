package first.company.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
	/* 인터페이스 */
	List<Map<String, Object>> boardList(Map<String, Object> map);

	Map<String, Object> login(Map<String, Object> map);
	
}
