import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class readingscreen extends StatelessWidget {
  final thumb;
  const readingscreen({this.thumb});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(thumb,
        style: GoogleFonts.baloo(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(18),
            child: Column(
              children: <Widget>[
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                      ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                      ' Sit amet aliquam id diam maecenas ultricies mi eget.'
                      ' Faucibus nisl tincidunt eget nullam non nisi.'
                      ' Massa tempor nec feugiat nisl pretium fusce id velit. '
                      'Varius sit amet mattis vulputate.'
                      ' Dapibus ultrices in iaculis nunc sed augue. '
                      'Amet consectetur adipiscing elit ut aliquam purus sit amet luctus. '
                      'Id cursus metus aliquam eleifend. '
                      'Velit ut tortor pretium viverra suspendisse potenti nullam. '
                      'Cursus metus aliquam eleifend mi. Sem integer vitae justo eget.'
                      ' Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. '
                      'Enim sit amet venenatis urna. '
                      'Habitant morbi tristique senectus et netus et malesuada. '
                      'Vitae elementum curabitur vitae nunc sed velit dignissim sodales ut.'
                      ' Eget nunc scelerisque viverra mauris in. '
                      'Auctor urna nunc id cursus metus aliquam eleifend mi in. '
                      'Nec nam aliquam sem et.Odio eu feugiat pretium nibh ipsum consequat nisl vel pretium. '
                      'Sed viverra tellus in hac. Orci phasellus egestas tellus rutrum tellus pellentesque.'
                      ' Odio ut sem nulla pharetra diam. Porta lorem mollis aliquam ut porttitor. '
                      'Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. '
                      'Pellentesque eu tincidunt tortor aliquam. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in.'
                      ' Morbi enim nunc faucibus a pellentesque. Turpis cursus in hac habitasse platea dictumst quisque. '
                      'Vitae congue mauris rhoncus aenean. Adipiscing elit pellentesque habitant morbi. '
                      'Turpis nunc eget lorem dolor sed viverra ipsum nunc. Massa eget egestas purus viverra accumsan in.'
                      'Tincidunt arcu non sodales neque sodales ut etiam sit. Sed id semper risus in hendrerit gravida rutrum quisque. '
                      'Volutpat lacus laoreet non curabitur gravida. Diam sollicitudin tempor id eu.'
                      ' Suspendisse ultrices gravida dictum fusce ut placerat orci nulla. '
                      'Sapien nec sagittis aliquam malesuada bibendum arcu. Hac habitasse platea dictumst quisque sagittis purus sit amet. '
                      'Turpis in eu mi bibendum neque egestas congue quisque. Lectus nulla at volutpat diam ut venenatis.'
                      ' Amet consectetur adipiscing elit ut aliquam.Auctor neque vitae tempus quam pellentesque nec. '
                      'Lectus nulla at volutpat diam ut venenatis. '
                      'Curabitur vitae nunc sed velit dignissim sodales ut. Dictum fusce ut placerat orci nulla. '
                      'Blandit libero volutpat sed cras ornare.'
                      ' Amet volutpat consequat mauris nunc congue nisi vitae. '
                      'Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. '
                      'Suspendisse interdum consectetur libero id faucibus nisl tincidunt eget nullam.'
                      ' Et ultrices neque ornare aenean euismod elementum nisi quis eleifend.'
                      ' Ac ut consequat semper viverra nam libero justo. Leo a diam sollicitudin tempor id eu nisl. '
                      'Aliquam nulla facilisi cras fermentum odio. Nunc sed blandit libero volutpat sed cras ornare arcu. '
                      'In nulla posuere sollicitudin aliquam ultrices. Integer feugiat scelerisque varius morbi. '
                      'Et ultrices neque ornare aenean euismod.Ipsum dolor sit amet consectetur adipiscing. '
                      'Orci a scelerisque purus semper eget duis. Sit amet commodo nulla facilisi nullam. '
                      'Sit amet est placerat in egestas erat imperdiet sed euismod. '
                      'Scelerisque purus semper eget duis at tellus at urna condimentum. '
                      'Sodales neque sodales ut etiam. Quis blandit turpis cursus in hac habitasse platea dictumst. '
                      'Mattis nunc sed blandit libero. Augue ut lectus arcu bibendum at varius vel pharetra vel. Risus nullam eget felis eget nunc. '
                      'Eget egestas purus viverra accumsan in nisl nisi scelerisque. Vitae nunc sed velit dignissim.',
                  style: GoogleFonts.poiretOne(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
