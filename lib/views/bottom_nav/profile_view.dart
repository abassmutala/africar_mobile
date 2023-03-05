import 'package:africar/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: _appBar(theme),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              hostInvitationCard(theme),
              ListTile(
                dense: true,
                leading: const Icon(Ionicons.key_outline),
                title: Text(
                  'How Africar works',
                  style: theme.textTheme.titleMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                dense: true,
                leading: const Icon(Ionicons.headset_outline),
                title: Text(
                  'Contact support',
                  style: theme.textTheme.titleMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                dense: true,
                leading: const Icon(Ionicons.document_text_outline),
                title: Text(
                  'Legal',
                  style: theme.textTheme.titleMedium,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(ThemeData theme) {
    return AppBar(
      // backgroundColor: theme.colorScheme.surfaceVariant,
      toolbarHeight: kToolbarHeight * 2,
      title: Row(
        children: [
          Icon(
            Ionicons.person_circle_outline,
            size: 48,
            color: theme.colorScheme.primary,
          ),
          Spacing.horizontalSpace12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Africar',
                style: theme.textTheme.titleLarge,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: theme.colorScheme.primary),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create an account',
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: theme.colorScheme.primary),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Container hostInvitationCard(ThemeData theme) {
    return Container(
              height: 192,
              padding: Insets.standardPadding,
              child: Card(
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: Insets.standardPadding,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Become a host',
                              style: theme.textTheme.titleLarge,
                            ),
                            Text.rich(
                              TextSpan(
                                  text:
                                      'Join thousands of car owners building businesses and earning meaningful income on ',
                                  style: theme.textTheme.bodyLarge,
                                  children: const [
                                    TextSpan(
                                      text: 'Africar.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: const Text('Learn more'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 192,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                          child: Image.asset(
                            'assets/images/host.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}
