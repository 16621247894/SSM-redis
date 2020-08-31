package com.zwq.idao;

public interface Function<T, E> {
	public T callback(E e);
}
