package io.kimmking.kmq.core;

import java.util.LinkedList;

public final class Kmq {

    public Kmq(String topic, int capacity) {
        this.topic = topic;
        this.capacity = capacity;
        this.queue = new LinkedList<KmqMessage>();
    }

    private String topic;

    private int capacity;

    private LinkedList<KmqMessage> queue;

    public boolean send(KmqMessage message) {
        return queue.offerFirst(message);
    }

    public KmqMessage poll() {
        return queue.poll();
    }
    
    public KmqMessage poll(int offset) {
    	if (offset >= queue.size()) {
			return null;
		}
        return queue.get(offset);
    }


}
