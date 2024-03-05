import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width * 0.075;

    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildInputFieldWithLabel('Name', decoration: const InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              )),
              const SizedBox(height: 16),
              _buildInputFieldWithLabel('Phone Number', keyboardType: TextInputType.phone, decoration: const InputDecoration(
                hintText: 'Phone',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              )),
              const SizedBox(height: 16),
              _buildInputFieldWithLabel('Username', decoration: const InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              )),
              const SizedBox(height: 16),
              _buildInputFieldWithLabel('Email', keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              )),
              const SizedBox(height: 16),
              _buildInputFieldWithLabel('Tagline', decoration: const InputDecoration(
                hintText: 'Tagline',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              )),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildInputFieldWithLabel('Gender', decoration: const InputDecoration(
                      hintText: 'Gender',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    )),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildInputFieldWithLabel('DOB', decoration: const InputDecoration(
                      hintText: 'DOB',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _buildInputFieldWithLabel('Select Photo', decoration: const InputDecoration(
                hintText: 'Select Photo',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputFieldWithLabel(String label, {TextInputType? keyboardType, InputDecoration? decoration}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(
            decoration: decoration,
            keyboardType: keyboardType,
          ),
        ),
      ],
    );
  }
}
