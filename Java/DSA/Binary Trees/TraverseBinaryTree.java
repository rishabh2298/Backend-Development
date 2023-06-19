public class TraverseBinaryTree {

    static class Node {

        int data;
        Node left;
        Node right;

        public Node(int data) {
            this.data = data;
        }

    }

    static class BinaryTree {

        private static int index = -1;

        public static Node buildTree(int[] nodes) {
            index++;
            if (nodes[index] == -1) {
                return null;
            }

            Node newNode = new Node(nodes[index]);

            newNode.left = buildTree(nodes);
            newNode.right = buildTree(nodes);

            return newNode;
        }

    }

    private static void preOrder(Node root) {
        if (root == null) {
            return;
        }

        System.out.println(root.data);
        preOrder(root.left);
        preOrder(root.right);
    }

    private static void inOrder(Node root) {
        if (root == null) {
            return;
        }

        inOrder(root.left);
        System.out.println(root.data);
        inOrder(root.right);
    }

    private static void postOrder(Node root) {
        if (root == null) {
            return;
        }

        postOrder(root.left);
        postOrder(root.right);
        System.out.println(root.data);
    }

    public static void main(String[] args) {

        int[] nodes = { 1, 2, 4, -1, -1, 5, -1, -1, 3, -1, 6, -1, -1 };

        // return root Node
        Node root = BinaryTree.buildTree(nodes);

        System.out.println(root.data);

        // 1. PreOrder Search
        // root, left-subtree, right-subtree;
        preOrder(root);

        // 2. InOrder Search
        // left-subtree, root, right-subtree;
        inOrder(root);

        // 3. PostOrder Search
        // left-subtree, right-subtree, root;
        postOrder(root);
    }

}