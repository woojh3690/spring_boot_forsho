package woo.forsho.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import woo.forsho.model.Contents;

public interface ContentsDao extends JpaRepository<Contents, Integer> {

}
