package woo.forsho.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import woo.forsho.model.Usertable;

public interface UserTableDao extends JpaRepository<Usertable, Integer> {

}
