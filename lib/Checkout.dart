import 'package:flutter/material.dart';




class Checkout extends StatefulWidget {

  Checkout({Key key, this.title, this.destination, @required this.total, @required this.location }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String total;
  final String location;
  final String destination;



  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {



  String name = "Michael Ranter";
  String phoneNum = "444-444-4444";
  String diningLocation = "";
  String diningDelivery = "Hamerschlag House" ;
  String price = "\$3.50";
  String distPickup = "0.3 MI";
  String distDelivery = "0.3 MI";
  String arriveBy = "2:24 P.M.";

  Color getCol (int index) {
    // This implementation doesn't actually work, we need to program the backend logic for this function
    // based on geographic coordinates
    if (index == 1) {
      return Colors.greenAccent;
    } if (index == 2) {
      return Colors.greenAccent;
    }
    else {
      return Colors.white;
    }

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    diningLocation = widget.location;
    price = widget.total;
    diningDelivery = widget.destination;

    return  MaterialApp(
      title: "Title",
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: new Scaffold(
          appBar: AppBar(
              title: const Text('Order Confirmation')),
        body: new Container(
            padding: new EdgeInsets.all (20.0),
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Center (
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Center (
                          child: new Text (
                              'Thank you for', style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                          )

                      ),

                      Center (
                          child: new Text (
                              'placing an order!', style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                          )

                      ),

                      Center (
                          child: Container (
                              padding: new EdgeInsets.only(top: 50.0, bottom: 30.0),
                              child: Column (

                                  children: [
                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Courier: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              name, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          )])),

                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Contact Details: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              phoneNum, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          )])),

                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Pickup: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              diningLocation, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          )])),

                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Destination: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              diningDelivery, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          )])),

                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Price: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              "\$"+price, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          ),])),

                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Distance to Pickup Location: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              distPickup, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          )])),

                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Distance to Delivery Location: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              distDelivery, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          )])),
                                    Container (
                                        padding: new EdgeInsets.only(bottom: 20.0),
                                        child: Row (children: [
                                          Text (
                                              "Arrival by: ", style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold)
                                          ),
                                          Text (
                                              arriveBy, style: new TextStyle (fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                          )])),

                                  ]))),


               /*       Center (
                          child: Container (
                              padding: new EdgeInsets.only(bottom: 30.0),
                              child: Row (children: [
                                Card (
                                    color: getCol(1) ,
                                    child: Text ("Order Received", style: new TextStyle (fontSize: 20.0, fontWeight:FontWeight.bold))

                                ),

                                Card (
                                    color: getCol (2) ,
                                    child: Text ("Picked Up", style: new TextStyle (fontSize: 20.0, fontWeight:FontWeight.bold))

                                ),

                                Card (
                                    color: getCol (3),
                                    child: Text ("Delivered", style: new TextStyle (fontSize: 20.0, fontWeight:FontWeight.bold))

                                ),



                              ]))
                      ),*/





                      Center (
                          child: FlatButton (

                              child: Card (
                                  color: Colors.red,
                                  child: new Text (
                                      "Cancel Order", style: new TextStyle (fontSize: 30.0, fontWeight: FontWeight.bold)
                                  )
                              ),

                              onPressed: (){Navigator.pop(context,true);}

                          )),


                    ])))));
  }}