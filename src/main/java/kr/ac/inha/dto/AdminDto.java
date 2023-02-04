package kr.ac.inha.dto;

public class AdminDto {

	@Override
	public String toString() {
		return "AdminDto [id=" + id + ", name=" + name + ", src=" + src + ", cost=" + cost + ", size=" + size
				+ ", count=" + count + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	private int id;
	private String name;
	private String src;
	private int cost;
	private String size;
	private int count;
	
}
