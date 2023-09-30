import 'package:flutter/material.dart';

void main() {
  runApp(Assignment8App());
}

class Assignment8App extends StatelessWidget {
  const Assignment8App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        final isProtrait = orientation == Orientation.portrait;
        return Scaffold(
            appBar: AppBar(
              title: const Text("Profile"),
            ),
            body: isProtrait ? portrait() : landScape());
      });
}

List images = [
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519577918463-484ce33e1ecb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHNtYWxsJTIwbWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
];

Widget cardbuilder({required List Url, required int index}) {
  return SizedBox(
    width: 200,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    Url[index],
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget portrait() {
  return Column(
      children: [
    Expanded(
      flex: 65,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          height: 500,
          width: 500,
          child: Image.network(
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1527888477750-6fd34fbfa3f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fGRzbHJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
        ),
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    const Text(
      'John Doe',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const SizedBox(
      height: 7,
    ),
    const Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Text(
          'Lorem ipsum dolor sit amet,'
          'consectetur adipiscing elit.'
          'Sed aliquet turpis eu enim tristique,'
          'in iaculis libero porttitor.',
          style: TextStyle(
            fontSize: 11,
          ),
        ),
      ),
    ),
    const SizedBox(
      height: 7,
    ),
    Expanded(
      flex: 40,
      child: GridView.builder(
        itemCount: images.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return cardbuilder(Url: images, index: index);
        },
      ),
    )
  ]);
}

Widget landScape() {
  return Row(
      children: [
    Expanded(
      flex: 38,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          height: 500,
          width: 500,
          child: Image.network(
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1527888477750-6fd34fbfa3f0?ixlib`  =rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fGRzbHJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
        ),
      ),
    ),
    const SizedBox(
      width: 8,
    ),
    Expanded(
      flex: 62,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 7,
          ),
          const Expanded(
            flex: 15,
            child: Text(
              'Lorem ipsum dolor sit amet,'
              'consectetur adipiscing elit.'
              'Sed aliquet turpis eu enim tristique,'
              'in iaculis libero porttitor.',
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 65,
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return cardbuilder(Url: images, index: index);
              },
            ),
          )
        ],
      ),
    )
  ]
  );
}