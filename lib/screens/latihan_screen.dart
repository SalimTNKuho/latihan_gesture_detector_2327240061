import 'package:material_ui/material_ui.dart';

class LatihanScreen extends StatefulWidget {
  const LatihanScreen({super.key});

  @override
  State<LatihanScreen> createState() => _LatihanScreenState();
}

class _LatihanScreenState extends State<LatihanScreen> {
  String actionLabel = 'Belum ada aksi';
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interaksi Pengguna'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    actionLabel = 'Anda melakukan Tap';
                    imagePath = 'images/on_tap.jpg';
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    actionLabel = 'Anda melakukan Double Tap';
                    imagePath = 'images/on_double_tap.gif';
                  });
                },
                onLongPress: () {
                  setState(() {
                    actionLabel = 'Anda melakukan Long Press';
                    imagePath = 'images/on_long_press.png';
                  });
                },
                onLongPressCancel: () {
                  setState(() {
                    actionLabel = 'Anda melakukan Long Press Cancel';
                    imagePath = 'images/long_press_cancel.gif';
                  });
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'DISINI',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                actionLabel,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              if (imagePath != null)
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    imagePath!,
                    fit: BoxFit.contain,
                  ),
                )
              else
                const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text('Belum ada gambar yang ditampilkan'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
