import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/model/news_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        title: const Text('News Agr'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: newsFakeList.length,
          itemBuilder: (context, index) {
            final NewModel = newsFakeList[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.network(
                            NewModel.image,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(NewModel.dateTime),
                              Text(NewModel.description),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    const Divider(color: AppColors.black),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.search),
      ),
    );
  }
}
