package me.icoral.base;

public class Page {

	protected long count;
	protected int size;
	protected long current;

	public long getCount() {
		return count;
	}

	public void setCount(long count) {
		this.count = count;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public long getCurrent() {
		return current;
	}

	public void setCurrent(long current) {
		this.current = current;
	}

	public Page() {

	}

	public Page(long recCount, int size) {
		size = size <= 0 ? 20 : size;

		if (recCount % size == 0) {
			this.count = recCount / size;
		} else {
			this.count = recCount / size + 1;
		}

		if (current > count) {
			current = count;
		}

		if (current <= 0) {
			current = 1;
		}
	}

}