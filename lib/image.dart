import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:badges/badges.dart' as badges;

class ImagePick extends StatefulWidget {
  const ImagePick({super.key});

  @override
  State<ImagePick> createState() => _ImagePickState();
}

File? image;
class _ImagePickState extends State<ImagePick> {
  File? _image ;
  
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        _image = imageTemp;
      });
    } on PlatformException catch (e) {
      return ('failed to pick $e');
    }
    image=_image;
  }

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.end
    ,
      children: [
        InkWell(
          child: UpContainer(),
          onTap: () {
            pickImage();
          },
        ),
        const SizedBox(width:15),
        image != null
            ? badges.Badge(
                onTap: () {
                  setState(() {
                    image = null;
                  });
                },
                position: badges.BadgePosition.topEnd(top: -8, end: -8),
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: Colors.black87,
                ),
                badgeContent: const Icon(
                  Icons.cancel_outlined,
                  size: 18,
                ),
                child: Container(
                  clipBehavior:Clip.antiAlias,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    
                    ),
                    child: Image.file(
                      image!,
                      fit: BoxFit.cover,
                    )),
              )
            : Container()
      ],
    );
  }
}

class UpContainer extends StatelessWidget {
  const UpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 100,
      width: 100,
      child: Icon(
        Icons.upload,
        color: Color(0xFFFFAB00),
        size: 45,
      ),
    );
  }
}
