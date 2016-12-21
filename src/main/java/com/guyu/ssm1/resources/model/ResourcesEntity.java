package com.guyu.ssm1.resources.model;

import com.guyu.ssm1.base.model.BaseEntity;

public class ResourcesEntity extends BaseEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer parent_id;
	private Integer has_child;
	private Integer type;
	private String source_url;
	private String key;
	private String name;
	private String icon;
	private String description;

	public ResourcesEntity() {

	}

	public ResourcesEntity(Long id, Integer parent_id, Integer no_child,
			Integer type, String source_url, String key, String name,
			String icon, String description) {
		super();
		this.id = id;
		this.parent_id = parent_id;
		this.has_child = no_child;
		this.type = type;
		this.source_url = source_url;
		this.key = key;
		this.name = name;
		this.icon = icon;
		this.description = description;
	}

	public Integer getParent_id() {
		return parent_id;
	}

	public void setParent_id(Integer parent_id) {
		this.parent_id = parent_id;
	}

	public Integer getHas_child() {
		return has_child;
	}

	public void setHas_child(Integer no_child) {
		this.has_child = no_child;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "ResourcesEntity{" +
				"id="+ id +
				"parent_id=" + parent_id +
				", has_child=" + has_child +
				", type=" + type +
				", source_url='" + source_url + '\'' +
				", key='" + key + '\'' +
				", name='" + name + '\'' +
				", icon='" + icon + '\'' +
				", description='" + description + '\'' +
				'}';
	}

	public String getSource_url() {
		return source_url;
	}

	public void setSource_url(String source_url) {
		this.source_url = source_url;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
