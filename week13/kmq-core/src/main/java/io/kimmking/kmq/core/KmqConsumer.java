package io.kimmking.kmq.core;

public class KmqConsumer<T> {

    private final KmqBroker broker;

    private Kmq kmq;
    
    private int offset = 0;

    public KmqConsumer(KmqBroker broker) {
        this.broker = broker;
    }

    public void subscribe(String topic) {
        this.kmq = this.broker.findKmq(topic);
        if (null == kmq) throw new RuntimeException("Topic[" + topic + "] doesn't exist.");
    }
    
    public KmqMessage<T> poll() {
    	KmqMessage msg = kmq.poll(offset);
    	if (msg != null) {
    		offset++;
		}
//    	System.out.println("当前offset位置："+offset);
        return msg;
    }

}
