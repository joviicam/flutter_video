import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/video.dart';

class ApiService {
  // Cambia esta URL por la dirección de tu servidor Spring Boot
  final String baseUrl =
      'http://192.168.52.50:8080/api'; // 10.0.2.2 es localhost desde el emulador de Android
  // Para iOS simulador, usa: 'http://localhost:8080/api'
  // Para dispositivo físico, usa la IP de tu computadora: 'http://192.168.1.X:8080/api'

  // Obtener todos los videos
  Future<List<Video>> getVideos() async {
    final response = await http.get(Uri.parse('$baseUrl/videos'));

    if (response.statusCode == 200) {
      List<dynamic> videosJson = json.decode(response.body);

      // 🔍 Imprime los datos antes de mapearlos
      print("Datos de la API: $videosJson");

      return videosJson.map((json) => Video.fromJson(json)).toList();
    } else {
      throw Exception('Error al cargar videos: ${response.statusCode}');
    }
  }

  // Obtener URL para streaming de un video específico
  String getVideoStreamUrl(String videoId) {
    return '$baseUrl/videos/stream/$videoId';
  }

  // Subir un video (implementación simplificada)
  Future<Video> uploadVideo(
    String title,
    String description,
    List<int> fileBytes,
    String fileName,
  ) async {
    var request = http.MultipartRequest('POST', Uri.parse('$baseUrl/videos'));

    request.fields['title'] = title;
    request.fields['description'] = description;

    request.files.add(
      http.MultipartFile.fromBytes('file', fileBytes, filename: fileName),
    );

    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 201) {
      return Video.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al subir video: ${response.statusCode}');
    }
  }
}
