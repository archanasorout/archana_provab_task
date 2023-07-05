# Improvement Point 
The following points will be improved in this task:

1. Yellow lines under Text Widgets
2. A RenderFlex overflowed by 16 pixels on the right. inside _ListItemWidgetState 
3. we are using container inside _ListItemWidgetState
4. when we scroll the list the value of count is changed means if any item having 2 count and then we started scroll that item so that item value will changed again 0 so that is the problem we are facing here

Answer of the following Points:
1. The problem is not having a Scaffold. Scaffold is a helper for Material apps. so we just need to wrap our ListWidget class with Scaffold.
2.  we have to give the minwidth to MaterialButton so we can able to solve this problem
3.  for padding purpose only instead of using conatiner we can use padding widget
4.  to solve this problem we have to declared count variable in  ListItemWidget class constructor and adding count value where, when we adding data inside list and our problem will be solved easily.
 
