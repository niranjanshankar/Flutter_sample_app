import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {

  final Function addProduct;
  final Function deleteProduct;

  ProductAdminPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    // DefaultTabController creates tabs on your page
    // length prop should match the no. of tabs created inside bottom prop in appBar
    // these two props should match TabBarView children's length inside body
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Home Page'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Product Admin'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Products',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              ),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: <Widget>[
              ProductCreatePage(addProduct),
              ProductListPage(),
            ],
          ),
        ),
      ),
    );
  }
}
