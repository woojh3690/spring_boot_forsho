package woo.forsho.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import woo.forsho.model.Contents;

public interface ContentsDao extends JpaRepository<Contents, Integer> {
	
	@Modifying
	@Transactional
	void deleteByNumber(int number);
	
	@Query("SELECT t FROM Contents t ORDER BY t.number")
	List<Contents> findFirstElement(Pageable limit);
}
