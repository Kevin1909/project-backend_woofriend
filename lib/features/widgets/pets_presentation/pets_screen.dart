import 'package:flutter/material.dart';
import 'package:woofriend/features/widgets/widget.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SizedBox(
                  width: size.width * 0.3,
                  height: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Placeholder()),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: (size.width - 40) * 0.55,
                      child: const Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          "Cillum culpa aliquip proident incididunt sit reprehenderit labore. Eiusmod nostrud sint officia aute qui mollit sit qui incididunt ullamco quis deserunt. Et non cupidatat id magna in aute elit non. Aute aute dolore irure sit nulla velit velit sit qui eiusmod dolore in fugiat. Quis ex excepteur dolore eiusmod sint culpa eu cillum officia. Pariatur sit amet fugiat adipisicing ut culpa tempor."),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      const CircleAvatar(
                        child: Icon(Icons.person_2_rounded),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: size.width * 0.2,
                        child: const Text(
                          "Fundación patitas",
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      )
                    ])
                  ])
            ]),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: SizedBox(
                width: 80,
                height: 50,
                child: CustomFilledButton(
                    text: "Ver",
                    buttonColor: Color.fromARGB(255, 201, 201, 201),
                    colorText: Colors.black87),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
