import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AhlakSayfasi(),
  ));
}
class AhlakSayfasi extends StatelessWidget {
  const AhlakSayfasi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Güzel Ahlak'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.volunteer_activism,
                size: 72,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              const Text(
                'İyilik ve Sorumluluk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  'Doğru sözlü olmak, emaneti korumak '
                  've ihtiyaç sahiplerine yardım etmek '
                  'güzel ahlakın önemli örnekleridir.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Güzel bir davranış seç ve uygula!',
                      ),
                    ),
                  );
                },
                child: const Text('Günün İyiliği'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}