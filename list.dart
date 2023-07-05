class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];

    for (var i = 0; i <= 100; i++) {
        list.add(ListItemWidget(count:0));
    }
    return Scaffold(body: ListView.builder(itemCount: list.length,itemBuilder: (context,index)=> list[index]));
   }
}

class ListItemWidget extends StatefulWidget {
  int count ;

   ListItemWidget({super.key,required this.count,});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}


class _ListItemWidgetState extends State<ListItemWidget> {
   @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text(widget.count.toString()),
             MaterialButton(
              minWidth:  MediaQuery.of(context).size.width/2,
              onPressed: () {
                setState(() {
                  widget.count++;
                });
              },
              child: const Text('+'),
            )
          ],
        ));
  }
}

