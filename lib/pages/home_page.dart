import 'package:flutter/material.dart';
import 'package:workouts_theme_settings/componets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Align(
                  alignment: Alignment.center, // Center the child container
                  child: Container(
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Text(
                'Primary Color Example',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'This is styled using the body text style defined in the theme.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {},
                child: const Text('Primary Button'),
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () {},
                child: const Text('Secondary Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'ThemeData & ColorScheme Showcase',
//           style: Theme.of(context).textTheme.headlineMedium,
//         ),
//         backgroundColor: colorScheme.primary,
//       ),
//       backgroundColor: colorScheme.surface,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 16),

//                 // Primary & OnPrimary
//                 _buildColorBox(
//                   'Primary & OnPrimary',
//                   colorScheme.primary,
//                   colorScheme.onPrimary,
//                   'Primary color represents the main brand color used for prominent elements.',
//                 ),

//                 // Secondary & OnSecondary
//                 _buildColorBox(
//                   'Secondary & OnSecondary',
//                   colorScheme.secondary,
//                   colorScheme.onSecondary,
//                   'Secondary color is used for accents and actions that complement the primary color.',
//                 ),

//                 // Background & OnBackground
//                 _buildColorBox(
//                   'Background & OnBackground',
//                   colorScheme.background,
//                   colorScheme.onBackground,
//                   'Background color is used for the app’s main background.',
//                 ),

//                 // Surface & OnSurface
//                 _buildColorBox(
//                   'Surface & OnSurface',
//                   colorScheme.surface,
//                   colorScheme.onSurface,
//                   'Surface color is used for cards, dialogs, and other raised surfaces.',
//                 ),

//                 // Error & OnError
//                 _buildColorBox(
//                   'Error & OnError',
//                   colorScheme.error,
//                   colorScheme.onError,
//                   'Error color is used to indicate problems or issues.',
//                 ),

//                 // Tertiary
//                 _buildColorBox(
//                   'Tertiary',
//                   colorScheme.tertiary,
//                   Colors.white,
//                   'Tertiary color can be used for additional accents in the UI.',
//                 ),

//                 const SizedBox(height: 16),

//                 // Buttons
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: colorScheme.primary,
//                     foregroundColor: colorScheme.onPrimary,
//                   ),
//                   onPressed: () {},
//                   child: const Text('Primary Button'),
//                 ),
//                 const SizedBox(height: 8),
//                 OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                     foregroundColor: colorScheme.secondary,
//                   ),
//                   onPressed: () {},
//                   child: const Text('Secondary Button'),
//                 ),
//                 const SizedBox(height: 8),
//                 TextButton(
//                   style: TextButton.styleFrom(
//                     foregroundColor: colorScheme.tertiary,
//                   ),
//                   onPressed: () {},
//                   child: const Text('Tertiary Button'),
//                 ),

//                 const SizedBox(height: 16),

//                 // Outline Example
//                 Container(
//                   height: 100,
//                   width: 200,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: colorScheme.outline,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Outline Example',
//                       style: TextStyle(color: colorScheme.onSurface),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 16),

//                 // Shadow Example
//                 Container(
//                   height: 100,
//                   width: 200,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: colorScheme.shadow,
//                         blurRadius: 8,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Shadow Example',
//                       style: TextStyle(color: colorScheme.onSurface),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // A helper method to create color demonstration boxes
//   Widget _buildColorBox(String title, Color backgroundColor, Color textColor,
//       String description) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16.0),
//       padding: const EdgeInsets.all(16.0),
//       width: 300,
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//                 color: textColor, fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             description,
//             style: TextStyle(color: textColor),
//           ),
//         ],
//       ),
//     );
//   }
// }
