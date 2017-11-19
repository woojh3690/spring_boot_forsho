package woo.forsho.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import woo.forsho.model.Contents;
import woo.forsho.model.Usertable;

public interface UserTableDao extends JpaRepository<Usertable, Integer> {
}
