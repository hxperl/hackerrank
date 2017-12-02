/* Node is defined as
var Node = function(data) {
    this.data = data;
    this.next = null;
}
*/
// This is a "method-only" submission.
// You only need to complete this method.

function print(head) {
    if(head != null)
    {
        console.log(head.data);
        print(head.next);
    }
}