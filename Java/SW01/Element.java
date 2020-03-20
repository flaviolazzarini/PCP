public class Element {
    private int value;
    private Element node;

    public Element(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public Element getNext() {
        return this.node;
    }

    public void setNext(Element next) {
        this.node = next;
    }
}
