import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../providers/auth_provider.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _showLogoutDialog(BuildContext context, AuthProvider authProvider) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Log Out'),
          content: const Text('Are you sure you want to log out of FoodExpress?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(ctx);
                authProvider.logout();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  void _showPaymentMethodsDialog(BuildContext context, ThemeProvider themeProvider) {
    final methods = [
      'Credit Card (*4242)',
      'Apple Pay / Google Pay',
      'PayPal Account',
      'Cash on Delivery',
    ];

    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Select Payment Method'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: methods.map((m) {
                final isSelected = themeProvider.selectedPaymentMethod == m;
                return ListTile(
                  title: Text(m),
                  leading: Icon(
                    isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
                    color: Colors.deepOrange,
                  ),
                  onTap: () {
                    themeProvider.setPaymentMethod(m);
                    Navigator.pop(ctx);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Payment method updated to: $m')),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final authProvider = Provider.of<AuthProvider>(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Settings'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Appearance & Display', theme),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  SwitchListTile(
                    secondary: const Icon(Icons.dark_mode_outlined, color: Colors.deepOrange),
                    title: const Text('Dark Theme'),
                    subtitle: const Text('Switch between Light and Dark mode'),
                    value: themeProvider.isDarkMode,
                    activeTrackColor: Colors.deepOrange.withAlpha(150),
                    onChanged: (val) => themeProvider.toggleTheme(val),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            _buildSectionHeader('Notification & Location', theme),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  SwitchListTile(
                    secondary: const Icon(Icons.notifications_active_outlined, color: Colors.deepOrange),
                    title: const Text('Order Updates & Offers'),
                    subtitle: const Text('Receive push notifications for delivery status'),
                    value: themeProvider.notificationsEnabled,
                    activeTrackColor: Colors.deepOrange.withAlpha(150),
                    onChanged: (val) => themeProvider.toggleNotifications(val),
                  ),
                  const Divider(height: 1),
                  SwitchListTile(
                    secondary: const Icon(Icons.location_on_outlined, color: Colors.deepOrange),
                    title: const Text('Location Services'),
                    subtitle: const Text('Allow app to find nearby restaurants automatically'),
                    value: themeProvider.locationServicesEnabled,
                    activeTrackColor: Colors.deepOrange.withAlpha(150),
                    onChanged: (val) => themeProvider.toggleLocationServices(val),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            _buildSectionHeader('Account & Payments', theme),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.payment, color: Colors.deepOrange),
                    title: const Text('Default Payment Method'),
                    subtitle: Text(themeProvider.selectedPaymentMethod),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => _showPaymentMethodsDialog(context, themeProvider),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.lock_outline, color: Colors.deepOrange),
                    title: const Text('Security & Password'),
                    subtitle: const Text('Change your password and security options'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Password reset email requested')),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            _buildSectionHeader('Support & Information', theme),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.help_outline, color: Colors.deepOrange),
                    title: const Text('Help & Customer Support'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Connecting to 24/7 FoodExpress Support...')),
                      );
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.policy_outlined, color: Colors.deepOrange),
                    title: const Text('Privacy Policy & Terms'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      showAboutDialog(
                        context: context,
                        applicationName: 'FoodExpress App',
                        applicationVersion: 'v1.0.0 (Diwali Edition)',
                        applicationIcon: Image.asset('assets/images/logo.png', width: 48),
                        children: const [
                          Text('FoodExpress Food Delivery Application.'),
                          SizedBox(height: 8),
                          Text('Developed for Flutter Application Assignment.'),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _showLogoutDialog(context, authProvider),
                icon: const Icon(Icons.logout),
                label: const Text(
                  'LOGOUT FROM ACCOUNT',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[600],
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}
