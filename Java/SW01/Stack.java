public class Stack {
    private int size = 0;
    private Element rootNode;

    public int size() {
        return this.size;
    }

    public Element top() {
        if (this.rootNode == null) {
            return null;
        } else {
            return this.rootNode;
        }
    }

    public void push(Element element) {
        if (this.rootNode == null) {
            this.rootNode = element;
        } else {
            element.setNext(this.rootNode);
            this.rootNode = element;
        }
        this.size++;
    }

    public boolean pop() {
        if (this.rootNode != null) {
            this.rootNode = rootNode.getNext();
            return true;
        }
        return false;
    }

    public void print() {
        if(this.rootNode == null){
            System.out.println("print - Stack is empty");
            return;
        }
        Element e = this.rootNode;
        System.out.print("print - Stack contains:");
        while (e != null) {
            System.out.format(" %d,",e.getValue());
            e = e.getNext();
        }
        System.out.format(" top Element = %d %n", top().getValue());

    }

    public boolean isEmpty() {
        return this.rootNode == null;
    }

}
