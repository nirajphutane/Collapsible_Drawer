import 'package:collapsible_drawer/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'collapsible_drawer.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  String title, data;

  List group1 = [
    {'Icon': Icon(Icons.architecture, color: Colors.white),
      'Title': 'Planning',
      'Data': 'Requirement analysis is the most important and fundamental stage in SDLC. It is performed by the senior members of the team with inputs from the customer, the sales department, market surveys and domain experts in the industry. This information is then used to plan the basic project approach and to conduct product feasibility study in the economical, operational and technical areas. Planning for the quality assurance requirements and identification of the risks associated with the project is also done in the planning stage. The outcome of the technical feasibility study is to define the various technical approaches that can be followed to implement the project successfully with minimum risks.'
    },
    {'Icon': Icon(Icons.receipt_long, color: Colors.white),
      'Title': 'Defining Requirements',
      'Data': 'Once the requirement analysis is done the next step is to clearly define and document the product requirements and get them approved from the customer or the market analysts. This is done through an SRS (Software Requirement Specification) document which consists of all the product requirements to be designed and developed during the project life cycle.'
    },
    {'Icon': Icon(Icons.construction, color: Colors.white),
      'Title': 'Designing the Product Architecture',
      'Data': 'SRS is the reference for product architects to come out with the best architecture for the product to be developed. Based on the requirements specified in SRS, usually more than one design approach for the product architecture is proposed and documented in a DDS - Design Document Specification.This DDS is reviewed by all the important stakeholders and based on various parameters as risk assessment, product robustness, design modularity, budget and time constraints, the best design approach is selected for the product.A design approach clearly defines all the architectural modules of the product along with its communication and data flow representation with the external and third party modules (if any). The internal design of all the modules of the proposed architecture should be clearly defined with the minutest of the details in DDS.'
    },
    {'Icon': Icon(Icons.build, color: Colors.white),
      'Title': 'Building or Developing the Product',
      'Data': 'In this stage of SDLC the actual development starts and the product is built. The programming code is generated as per DDS during this stage. If the design is performed in a detailed and organized manner, code generation can be accomplished without much hassle.Developers must follow the coding guidelines defined by their organization and programming tools like compilers, interpreters, debuggers, etc. are used to generate the code. Different high level programming languages such as C, C++, Pascal, Java and PHP are used for coding. The programming language is chosen with respect to the type of software being developed.'
    },
    {'Icon': Icon(Icons.adb, color: Colors.white),
      'Title': 'Testing the Product',
      'Data': 'This stage is usually a subset of all the stages as in the modern SDLC models, the testing activities are mostly involved in all the stages of SDLC. However, this stage refers to the testing only stage of the product where product defects are reported, tracked, fixed and retested, until the product reaches the quality standards defined in the SRS.'
    },
    {'Icon': Icon(Icons.store_mall_directory_rounded, color: Colors.white),
      'Title': 'Deployment in the Market and Maintenance',
      'Data': 'Once the product is tested and ready to be deployed it is released formally in the appropriate market. Sometimes product deployment happens in stages as per the business strategy of that organization. The product may first be released in a limited segment and tested in the real business environment (UAT- User acceptance testing).Then based on the feedback, the product may be released as it is or with suggested enhancements in the targeting market segment. After the product is released in the market, its maintenance is done for the existing customer base.'
    },
  ];

  List group2 = [
    {'Icon': Icon(Icons.visibility_off, color: Colors.white),
      'Title': 'Abstraction',
      'Navigator': Abstraction()},
    {'Icon': Icon(Icons.workspaces_filled, color: Colors.white),
      'Title': 'Encapsulation',
      'Navigator': Encapsulation()},
    {'Icon': Icon(Icons.account_tree, color: Colors.white),
      'Title': 'Inheritance',
      'Navigator': Inheritance()},
    {'Icon': Icon(Icons.alt_route, color: Colors.white),
      'Title': 'Polymorphism',
      'Navigator': Polymorphism()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title?? 'Home'),
        centerTitle: true,
      ),
      drawer: CollapsibleDrawer(
        group1, (index){
          setState(() {
            title = group1[index]['Title'];
            data = group1[index]['Data'];
          });
          Navigator.pop(context);
        }, group2, (index){
          title = null; data = null;
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => group2[index]['Navigator']));
        }
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Text(data?? 'Collapsible Drawer'),
        ),
      ),
    );
  }
}