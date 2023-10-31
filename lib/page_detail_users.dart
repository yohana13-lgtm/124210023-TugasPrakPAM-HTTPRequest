import 'package:flutter/material.dart';
import 'package:untitled6/api_data_source.dart';
import 'package:untitled6/UserModel.dart';

class DetailUserPage extends StatelessWidget {
  final Data userData;

  DetailUserPage({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('User Detail'),
        ),
      ),
      body: _buildDetailUserBody(),
    );
  }

  Widget _buildDetailUserBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Mengatur posisi secara horizontal menjadi tengah
        children: [
          Center(
            child: Image.network(userData.avatar!),
          ),
          SizedBox(height: 16),
          Text('Name: ${userData.firstName} ${userData.lastName}'),
          Text('Email: ${userData.email}'),
          // Tambahkan detail pengguna lainnya jika diperlukan
        ],
      ),
    );
  }
}
