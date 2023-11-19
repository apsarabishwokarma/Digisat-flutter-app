import 'package:flutter/material.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({Key? key});

  void _shareInvitationLink() {
    // Replace 'Your Invitation Link' with the actual link you want to share
    // Share.share('Check out Digisat, the SAT preparation app! Your Invitation Link');
  }

  void _inviteFriendsViaContact() {
    // Implement contact picker logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Text(
          'Invite Friends',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ContactCard(
              profileIcon: Icons.person,
              contactName: 'John Doe',
              subtitle: '123-456-7890',
              onInvitePressed: () {
                // Implement logic to invite contact
                print('Inviting John Doe');
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: _shareInvitationLink,
              icon: const Icon(Icons.share),
              label: const Text('Share Link via Share Dialog'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Share via:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {
                    // Implement logic to share link via Facebook
                    print('Share on Facebook');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.mail),
                  onPressed: () {
                    // Implement logic to share link via Mail
                    print('Share via Mail');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.abc),
                  onPressed: () {
                    // Implement logic to share link via Twitter
                    print('Share on Twitter');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.abc_sharp),
                  onPressed: () {
                    // Implement logic to share link via Instagram
                    print('Share on Instagram');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData profileIcon;
  final String contactName;
  final String subtitle;
  final VoidCallback onInvitePressed;

  ContactCard({
    required this.profileIcon,
    required this.contactName,
    required this.subtitle,
    required this.onInvitePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(profileIcon),
        ),
        title: Text(contactName),
        subtitle: Text(subtitle),
        trailing: ElevatedButton(
          onPressed: onInvitePressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
          ),
          child: Text(
            'Invite',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
