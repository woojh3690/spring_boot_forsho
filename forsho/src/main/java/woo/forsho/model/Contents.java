package woo.forsho.model;
// Generated 2017. 11. 13 ���� 9:20:52 by Hibernate Tools 5.2.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Contents generated by hbm2java
 */
@Entity
@Table(name = "contents", catalog = "forsho")
public class Contents implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer number;
	private String source;
	private String title;
	private String link;
	private String description;
	private String postdate;
	private String imageurl;

	public Contents() {
	}

	public Contents(String source) {
		this.source = source;
	}

	public Contents(String source, String title, String link, String description, String postdate, String imageurl) {
		this.source = source;
		this.title = title;
		this.link = link;
		this.description = description;
		this.postdate = postdate;
		this.imageurl = imageurl;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "number", unique = true, nullable = false)
	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	@Column(name = "source", nullable = false, length = 10)
	public String getSource() {
		return this.source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	@Column(name = "title", length = 65535)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "link", length = 65535)
	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "postdate", length = 65535)
	public String getPostdate() {
		return this.postdate;
	}

	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}

	@Column(name = "imageurl", length = 65535)
	public String getImageurl() {
		return this.imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

}
