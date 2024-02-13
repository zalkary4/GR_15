import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primarySwatch: Colors.amber,
        dividerColor: Colors.white24,
        appBarTheme: AppBarTheme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          labelSmall: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
          titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/detail': (context) => const CrCoinScreen()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  }) : super();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Bitcoines')),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/225px-Bitcoin.svg.png'),
          ),
          title: Text('Bitcoines', style: theme.textTheme.titleLarge),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.of(context).pushNamed(
              '/detail',
              // arguments: coinName,
            );
          },
        ),
      ),
    );
  }
}

class CrCoinScreen extends StatefulWidget {
  const CrCoinScreen({super.key});

  @override
  State<CrCoinScreen> createState() => _CrCoinScreenState();
}

class _CrCoinScreenState extends State<CrCoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    // assert(args != null && args is String);
    if (args == null) {
      return;
    }
    if (args is! String) {
      return;
    }

    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? 'none'),
      ),
    );
  }
}
