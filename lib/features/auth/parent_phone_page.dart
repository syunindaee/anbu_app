import 'package:flutter/material.dart';

class ParentPhonePage extends StatefulWidget {
  const ParentPhonePage({super.key});

  @override
  State<ParentPhonePage> createState() => _ParentPhonePageState();
}

class _ParentPhonePageState extends State<ParentPhonePage> {
  final TextEditingController _phoneController = TextEditingController();
  bool _isValid=false;  
  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('부모님 정보'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            const Text(
              '휴대폰 번호를 입력해주세요',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              '인증번호는 다음 단계에서 전송됩니다.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 40),

            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                setState(() {
                  _isValid = value.replaceAll('-', '').length==11;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '010-1234-5678',
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: _isValid
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('다음 단계로 이동합니다.'),
                          ),
                        );
                     }
                    : null,
                child: const Text(
                  '다음',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}