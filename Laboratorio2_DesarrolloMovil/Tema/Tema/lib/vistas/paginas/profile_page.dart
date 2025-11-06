import 'package:flutter/material.dart';
import '../../temas/color_scheme_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorProfileDepartamento.primaryBlue,
              ColorProfileDepartamento.skyBlue,
              ColorProfileDepartamento.lightBlue,
              ColorProfileDepartamento.background,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header con foto de perfil
                Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      // Foto de perfil
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorProfileDepartamento.white,
                            width: 4,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorProfileDepartamento.darkBlue
                                  .withOpacity(0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 80,
                          backgroundColor: ColorProfileDepartamento.white,
                          backgroundImage: const AssetImage('assets/images/perfil.jpeg'),
                          onBackgroundImageError: (exception, stackTrace) {
                            // Si la imagen falla, muestra el ícono por defecto
                            print('Error cargando imagen de perfil: $exception');
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      
                      // Nombre
                      Text(
                        'Jordan Guaman',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: ColorProfileDepartamento.white,
                          shadows: [
                            Shadow(
                              color: ColorProfileDepartamento.darkBlue,
                              offset: const Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      
                      // Carrera
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: ColorProfileDepartamento.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Estudiante de Ingeniería de Software',
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorProfileDepartamento.primaryBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Sección de habilidades
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: ColorProfileDepartamento.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: ColorProfileDepartamento.darkBlue
                            .withOpacity(0.2),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Header de habilidades
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: ColorProfileDepartamento.primaryBlue,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.code,
                              color: ColorProfileDepartamento.white,
                              size: 28,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Habilidades Técnicas',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: ColorProfileDepartamento.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      // Tecnologías Frontend
                      _buildSkillSection(
                        title: 'Frontend Development',
                        icon: Icons.web,
                        color: ColorProfileDepartamento.lightBlue,
                        technologies: [
                          'HTML5 & CSS3',
                          'JavaScript/TypeScript',
                          'React.js',
                          'Flutter',
                          'Angular',
                          'Vue.js',
                        ],
                      ),
                      
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: ColorProfileDepartamento.paleBlue,
                      ),
                      
                      // Tecnologías Backend
                      _buildSkillSection(
                        title: 'Backend Development',
                        icon: Icons.storage,
                        color: ColorProfileDepartamento.skyBlue,
                        technologies: [
                          'Node.js',
                          'Python/Django',
                          'Java/Spring Boot',
                          'PostgreSQL/MySQL',
                          'MongoDB',
                          'REST APIs',
                        ],
                      ),
                    ],
                  ),
                ),
                
                // Información adicional - DCCO
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: ColorProfileDepartamento.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: ColorProfileDepartamento.darkBlue
                            .withOpacity(0.2),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Imagen DCCO mejorada
                      Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              ColorProfileDepartamento.lightBlue.withOpacity(0.3),
                              ColorProfileDepartamento.skyBlue.withOpacity(0.2),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorProfileDepartamento.primaryBlue
                                  .withOpacity(0.3),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Stack(
                            children: [
                              // Imagen principal
                              Image.asset(
                                'assets/images/dcco_imagen.jpeg',
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          ColorProfileDepartamento.primaryBlue,
                                          ColorProfileDepartamento.skyBlue,
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.school,
                                        size: 80,
                                        color: ColorProfileDepartamento.white,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              // Overlay gradient para mejor legibilidad del texto
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        ColorProfileDepartamento.darkBlue
                                            .withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Badge decorativo
                              Positioned(
                                top: 12,
                                right: 12,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorProfileDepartamento.primaryBlue,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 4,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.verified,
                                        size: 16,
                                        color: ColorProfileDepartamento.white,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'DCCO',
                                        style: TextStyle(
                                          color: ColorProfileDepartamento.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Texto sobre la imagen
                              Positioned(
                                bottom: 16,
                                left: 16,
                                right: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Departamento de Ciencias',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorProfileDepartamento.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black.withOpacity(0.5),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'de la Computación',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorProfileDepartamento.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black.withOpacity(0.5),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      // Información institucional
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: ColorProfileDepartamento.primaryBlue,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Universidad de las Fuerzas Armadas - ESPE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: ColorProfileDepartamento.primaryBlue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: ColorProfileDepartamento.lightBlue
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.emoji_events,
                                    size: 18,
                                    color: ColorProfileDepartamento.primaryBlue,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Excelencia en Computación',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: ColorProfileDepartamento.darkBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Botón Cerrar Sesión
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text(
                        'CERRAR SESIÓN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorProfileDepartamento.primaryBlue,
                        foregroundColor: ColorProfileDepartamento.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkillSection({
    required String title,
    required IconData icon,
    required Color color,
    required List<String> technologies,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: ColorProfileDepartamento.primaryBlue,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorProfileDepartamento.darkBlue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: technologies.map((tech) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: color,
                    width: 1,
                  ),
                ),
                child: Text(
                  tech,
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorProfileDepartamento.darkBlue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
