import 'package:flutter/material.dart';

// ─────────────────────────────────────────────
//  THEME  –  mirrors the CSS color palette
// ─────────────────────────────────────────────
class AuraColors {
  static const Color bg = Color(0xFF0A0A0C);
  static const Color surface = Color(0x0DFFFFFF); // 5 % white
  static const Color accentGold = Color(0xFFD4AF37);
  static const Color accentPurple = Color(0xFF8E44AD);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFA0A0A0);
  static const Color chipBorder = Color(0x1AFFFFFF); // 10 % white
  static const Color nowPlayingText = Color(0xFF000000);
  static const Color nowPlayingSubtext = Color(0x99000000); // 60 % black

  static const LinearGradient aura = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentPurple, accentGold],
  );
}

// ─────────────────────────────────────────────
//  DATA MODELS
// ─────────────────────────────────────────────
class StoryCard {
  final String image;
  final String title;
  final String subtitle;
  final double opacity;

  const StoryCard({
    required this.image,
    required this.title,
    required this.subtitle,
    this.opacity = 1.0,
  });
}

class NavItem {
  final IconData icon;
  final String label;

  const NavItem({required this.icon, required this.label});
}

class MoodCategory {
  final String emoji;
  final String label;
  final String description;
  final Color color;
  final List<StoryCard> stories;

  const MoodCategory({
    required this.emoji,
    required this.label,
    required this.description,
    required this.color,
    required this.stories,
  });
}

class VoiceActor {
  final String name;
  final String initial;
  final int storyCount;

  const VoiceActor({
    required this.name,
    required this.initial,
    required this.storyCount,
  });
}

// ─────────────────────────────────────────────
//  STORY DATA  –  matches the HTML card data
// ─────────────────────────────────────────────
final List<StoryCard> continueListening = [
  const StoryCard(
    image: 'assets/thumb_caught_off_guard.png',
    title: 'The Forbidden Office',
    subtitle: 'Eps 4 of 12 \u2022 8m left',
  ),
  const StoryCard(
    image: 'assets/thumb_messy_hair.png',
    title: 'Midnight Whispers',
    subtitle: 'Completed \u2022 Replay?',
    opacity: 0.6,
  ),
];

final List<StoryCard> trendingSeries = [
  const StoryCard(
    image: 'assets/thumb_leave_a_mark.png',
    title: 'Velvet Nights',
    subtitle: '12 Episodes \u2022 Romance',
  ),
  const StoryCard(
    image: 'assets/thumb_mirror_selfie.png',
    title: 'Silent Desires',
    subtitle: '8 Episodes \u2022 Drama',
  ),
  const StoryCard(
    image: 'assets/thumb_memories.png',
    title: 'Golden Hour',
    subtitle: '15 Episodes \u2022 Erotic',
  ),
];

final List<StoryCard> pickedForYou = [
  const StoryCard(
    image: 'assets/thumb_situationship.png',
    title: 'Neon Heart',
    subtitle: 'New Series',
  ),
  const StoryCard(
    image: 'assets/thumb_domestic_life.png',
    title: 'Secret Garden',
    subtitle: '5 Episodes',
  ),
  const StoryCard(
    image: 'assets/thumb_green_flag.png',
    title: 'Green Flag Energy',
    subtitle: 'Comfort \u2022 Safe & sweet',
  ),
  const StoryCard(
    image: 'assets/thumb_hurt_comfort.png',
    title: 'Hurt / Comfort',
    subtitle: 'Healing \u2022 Aftercare vibes',
  ),
  const StoryCard(
    image: 'assets/thumb_sensory_deprivation.png',
    title: 'Sensory Play',
    subtitle: 'Blindfolds \u2022 Teasing',
  ),
];

final List<StoryCard> newCategories = [
  const StoryCard(
    image: 'assets/thumb_sporty_bf.png',
    title: 'Sporty BF',
    subtitle: 'Athletes \u2022 First crush energy',
  ),
  const StoryCard(
    image: 'assets/thumb_slow_burn.png',
    title: 'Slow Burn',
    subtitle: 'Soft touches \u2022 Long build',
  ),
  const StoryCard(
    image: 'assets/thumb_red_flags.png',
    title: 'Red Flags Tonight',
    subtitle: 'Chaotic fun \u2022 Bad ideas',
  ),
];

// All stories combined (for search)
final List<StoryCard> allStories = [
  ...continueListening,
  ...trendingSeries,
  ...pickedForYou,
  ...newCategories,
];

// Mood / Category data
final List<MoodCategory> moodCategories = [
  MoodCategory(
    emoji: '\u{1F525}',
    label: 'Intense',
    description: 'Heart-racing stories with raw chemistry and tension',
    color: const Color(0xFFE74C6F),
    stories: [
      const StoryCard(image: 'assets/thumb_caught_off_guard.png', title: 'The Forbidden Office', subtitle: '12 Episodes \u2022 Power Dynamic'),
      const StoryCard(image: 'assets/thumb_red_flags.png', title: 'Red Flags Tonight', subtitle: '6 Episodes \u2022 Chaotic'),
      const StoryCard(image: 'assets/thumb_mirror_selfie.png', title: 'Silent Desires', subtitle: '8 Episodes \u2022 Drama'),
      const StoryCard(image: 'assets/thumb_not_her_again.png', title: 'Not Her Again', subtitle: '9 Episodes \u2022 Enemies to Lovers'),
    ],
  ),
  MoodCategory(
    emoji: '\u{1F56F}\uFE0F',
    label: 'Slow Burn',
    description: 'Delicious anticipation, lingering glances, and yearning',
    color: const Color(0xFFD4AF37),
    stories: [
      const StoryCard(image: 'assets/thumb_slow_burn.png', title: 'Slow Burn Sessions', subtitle: '10 Episodes \u2022 Tender'),
      const StoryCard(image: 'assets/thumb_leave_a_mark.png', title: 'Velvet Nights', subtitle: '12 Episodes \u2022 Romance'),
      const StoryCard(image: 'assets/thumb_memories.png', title: 'Golden Hour', subtitle: '15 Episodes \u2022 Summer'),
    ],
  ),
  MoodCategory(
    emoji: '\u{1F319}',
    label: 'Late Night',
    description: 'For when the world is quiet and it\'s just you and the voice',
    color: const Color(0xFF6C5CE7),
    stories: [
      const StoryCard(image: 'assets/thumb_messy_hair.png', title: 'Midnight Whispers', subtitle: '8 Episodes \u2022 ASMR'),
      const StoryCard(image: 'assets/thumb_sensory_deprivation.png', title: 'Sensory Play', subtitle: '7 Episodes \u2022 Immersive'),
    ],
  ),
  MoodCategory(
    emoji: '\u{1F49A}',
    label: 'Comfort',
    description: 'Safe, warm, and wrapped in tenderness',
    color: const Color(0xFF00B894),
    stories: [
      const StoryCard(image: 'assets/thumb_green_flag.png', title: 'Green Flag Energy', subtitle: '6 Episodes \u2022 Sweet'),
      const StoryCard(image: 'assets/thumb_domestic_life.png', title: 'Secret Garden', subtitle: '5 Episodes \u2022 Tender'),
      const StoryCard(image: 'assets/thumb_hurt_comfort.png', title: 'Hurt / Comfort', subtitle: '10 Episodes \u2022 Healing'),
    ],
  ),
  MoodCategory(
    emoji: '\u{26D3}\uFE0F',
    label: 'Power Play',
    description: 'Dominance, control, and surrender between the lines',
    color: const Color(0xFF8E44AD),
    stories: [
      const StoryCard(image: 'assets/thumb_caught_off_guard.png', title: 'The Forbidden Office', subtitle: '12 Episodes \u2022 Power Dynamic'),
      const StoryCard(image: 'assets/thumb_sensory_deprivation.png', title: 'Sensory Play', subtitle: '7 Episodes \u2022 Blindfolds'),
    ],
  ),
  MoodCategory(
    emoji: '\u{1F4AB}',
    label: 'Fantasy',
    description: 'Escape into worlds where anything is possible',
    color: const Color(0xFFE17055),
    stories: [
      const StoryCard(image: 'assets/thumb_situationship.png', title: 'Neon Heart', subtitle: '8 Episodes \u2022 Modern'),
      const StoryCard(image: 'assets/thumb_sporty_bf.png', title: 'Sporty BF', subtitle: '8 Episodes \u2022 Playful'),
      const StoryCard(image: 'assets/thumb_memories.png', title: 'Golden Hour', subtitle: '15 Episodes \u2022 Summer Romance'),
    ],
  ),
];

final List<VoiceActor> voiceActors = [
  const VoiceActor(name: 'Adrian Cole', initial: 'A', storyCount: 3),
  const VoiceActor(name: 'Mira Velvet', initial: 'M', storyCount: 2),
  const VoiceActor(name: 'James Noir', initial: 'J', storyCount: 3),
  const VoiceActor(name: 'Sable Ray', initial: 'S', storyCount: 2),
  const VoiceActor(name: 'Dante Echo', initial: 'D', storyCount: 2),
  const VoiceActor(name: 'Luna Hart', initial: 'L', storyCount: 2),
];

final List<String> trendingTags = [
  '#enemiestolovers', '#aftercare', '#possessive',
  '#firsttime', '#collegeAU', '#softdom',
  '#jealousy', '#bodyworshipping', '#fakerelationship',
  '#roommates', '#forbiddenlove', '#praising',
];

final List<String> recentSearches = [
  'Velvet Nights', 'ASMR', 'enemies to lovers', 'slow burn',
];

final List<NavItem> bottomNavItems = [
  const NavItem(icon: Icons.home_rounded, label: 'Home'),
  const NavItem(icon: Icons.search_rounded, label: 'Search'),
  const NavItem(icon: Icons.library_books_rounded, label: 'Library'),
  const NavItem(icon: Icons.person_rounded, label: 'Profile'),
];

// ─────────────────────────────────────────────
//  MAIN SCREEN
// ─────────────────────────────────────────────
class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int _selectedNav = 0;
  bool _isPlaying = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AuraColors.bg,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // ── Tab content ──
            IndexedStack(
              index: _selectedNav,
              children: [
                _buildHomeContent(),
                SearchScreen(onCategoryTap: _openCategory),
              ],
            ),

            // ── Now Playing bar ──
            Positioned(
              left: 16,
              right: 16,
              bottom: 90,
              child: _buildNowPlaying(),
            ),

            // ── Bottom Navigation ──
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: _buildBottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  void _openCategory(MoodCategory category) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => CategoryDetailScreen(category: category),
        transitionDuration: const Duration(milliseconds: 350),
        reverseTransitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (_, anim, __, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: anim, curve: Curves.easeOutCubic)),
            child: child,
          );
        },
      ),
    );
  }

  // ─────────────────────────────────────────
  //  HOME CONTENT
  // ─────────────────────────────────────────
  Widget _buildHomeContent() {
    return CustomScrollView(
      slivers: [
        // App header
        SliverToBoxAdapter(child: _buildHeader()),
        // Continue Listening
        SliverToBoxAdapter(
          child: _buildSection(
            'Continue Listening',
            _buildContinueRail(),
          ),
        ),
        // Trending Series
        SliverToBoxAdapter(
          child: _buildSection(
            'Trending Series',
            _buildTallCardRail(trendingSeries),
          ),
        ),
        // Picked For You
        SliverToBoxAdapter(
          child: _buildSection(
            'Picked For You',
            _buildTallCardRail(pickedForYou),
          ),
        ),
        // New Categories
        SliverToBoxAdapter(
          child: _buildSection(
            'New Categories',
            _buildTallCardRail(newCategories),
          ),
        ),
        // Bottom spacing for now-playing + nav
        const SliverToBoxAdapter(child: SizedBox(height: 160)),
      ],
    );
  }

  // ─────────────────────────────────────────
  //  HEADER
  // ─────────────────────────────────────────
  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good evening,',
                style: TextStyle(
                  color: AuraColors.textSecondary,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  const Text(
                    'Elena ',
                    style: TextStyle(
                      color: AuraColors.textPrimary,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) =>
                        AuraColors.aura.createShader(bounds),
                    child: const Text(
                      '\u2728',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: AuraColors.aura,
              border: Border.all(color: AuraColors.chipBorder, width: 2),
            ),
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────
  //  SECTION WRAPPER
  // ─────────────────────────────────────────
  Widget _buildSection(String title, Widget rail) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 20),
            child: Text(
              title,
              style: const TextStyle(
                color: AuraColors.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 14),
          rail,
        ],
      ),
    );
  }

  // ─────────────────────────────────────────
  //  CONTINUE LISTENING  (square cards)
  // ─────────────────────────────────────────
  Widget _buildContinueRail() {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 24, right: 20),
        itemCount: continueListening.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final story = continueListening[index];
          return Opacity(
            opacity: story.opacity,
            child: Container(
              width: 240,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AuraColors.surface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AuraColors.chipBorder.withValues(alpha: 0.05)),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      story.image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          story.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: AuraColors.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          story.subtitle,
                          style: const TextStyle(
                            color: AuraColors.textSecondary,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // ─────────────────────────────────────────
  //  TALL CARD RAIL  (trending / picked / new)
  // ─────────────────────────────────────────
  Widget _buildTallCardRail(List<StoryCard> stories) {
    return SizedBox(
      height: 268,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 24, right: 20),
        itemCount: stories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (context, index) {
          final story = stories[index];
          return SizedBox(
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail
                Container(
                  width: 160,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      story.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Title
                Text(
                  story.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AuraColors.textPrimary,
                    fontSize: 14,
                  ),
                ),
                // Subtitle
                Text(
                  story.subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AuraColors.textSecondary,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // ─────────────────────────────────────────
  //  NOW PLAYING BAR
  // ─────────────────────────────────────────
  Widget _buildNowPlaying() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: AuraColors.aura,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AuraColors.accentPurple.withValues(alpha: 0.4),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          // Thumbnail
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/thumb_not_her_again.png',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          // Title / subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'The Forbidden Office',
                  style: TextStyle(
                    color: AuraColors.nowPlayingText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Episode 4 \u2022 Chapter 2',
                  style: TextStyle(
                    color: AuraColors.nowPlayingSubtext,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          // Play/Pause
          GestureDetector(
            onTap: () => setState(() => _isPlaying = !_isPlaying),
            child: Icon(
              _isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
              color: AuraColors.nowPlayingText,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────
  //  BOTTOM NAVIGATION
  // ─────────────────────────────────────────
  Widget _buildBottomNav() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AuraColors.bg.withValues(alpha: 0.85),
        border: Border(
          top: BorderSide(color: AuraColors.chipBorder.withValues(alpha: 0.05)),
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter:
              ColorFilter.mode(Colors.black.withValues(alpha: 0.3), BlendMode.srcOver),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(bottomNavItems.length, (index) {
              final item = bottomNavItems[index];
              final isActive = _selectedNav == index;
              return GestureDetector(
                onTap: () => setState(() => _selectedNav = index),
                behavior: HitTestBehavior.opaque,
                child: SizedBox(
                  width: 64,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item.icon,
                        color: isActive
                            ? AuraColors.accentGold
                            : AuraColors.textSecondary,
                        size: 26,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.label,
                        style: TextStyle(
                          color: isActive
                              ? AuraColors.accentGold
                              : AuraColors.textSecondary,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════
//  SEARCH SCREEN
// ═══════════════════════════════════════════
class SearchScreen extends StatefulWidget {
  final void Function(MoodCategory category) onCategoryTap;

  const SearchScreen({super.key, required this.onCategoryTap});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  String _query = '';

  List<StoryCard> get _filteredStories {
    if (_query.isEmpty) return [];
    final q = _query.toLowerCase();
    return allStories
        .where((s) =>
            s.title.toLowerCase().contains(q) ||
            s.subtitle.toLowerCase().contains(q))
        .toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasQuery = _query.isNotEmpty;
    return CustomScrollView(
      slivers: [
        // ── Header ──
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 20, 4),
            child: Text(
              'Discover',
              style: const TextStyle(
                color: AuraColors.textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),

        // ── Search bar ──
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 12, 20, 8),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: AuraColors.surface,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AuraColors.chipBorder),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 14),
                  Icon(Icons.search_rounded,
                      color: AuraColors.textSecondary, size: 22),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      focusNode: _searchFocus,
                      onChanged: (v) => setState(() => _query = v),
                      style: const TextStyle(
                          color: AuraColors.textPrimary, fontSize: 15),
                      decoration: InputDecoration(
                        hintText: 'Search stories, voices, moods\u2026',
                        hintStyle: TextStyle(
                            color: AuraColors.textSecondary.withValues(alpha: 0.6),
                            fontSize: 15),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  if (hasQuery)
                    GestureDetector(
                      onTap: () => setState(() {
                        _searchController.clear();
                        _query = '';
                        _searchFocus.unfocus();
                      }),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Icon(Icons.close_rounded,
                            color: AuraColors.textSecondary, size: 20),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),

        // ── Results or browse content ──
        if (hasQuery) ..._buildSearchResults() else ..._buildBrowseContent(),

        // Bottom spacing
        const SliverToBoxAdapter(child: SizedBox(height: 160)),
      ],
    );
  }

  // ─────────────────────────────────────────
  //  SEARCH RESULTS
  // ─────────────────────────────────────────
  List<Widget> _buildSearchResults() {
    final results = _filteredStories;
    if (results.isEmpty) {
      return [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Icon(Icons.search_off_rounded,
                    color: AuraColors.textSecondary.withValues(alpha: 0.4), size: 56),
                const SizedBox(height: 16),
                Text(
                  'No results for "$_query"',
                  style: TextStyle(
                      color: AuraColors.textSecondary, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(
                  'Try different keywords or browse by mood',
                  style: TextStyle(
                      color: AuraColors.textSecondary.withValues(alpha: 0.6),
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ];
    }
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 20, 12),
          child: Text(
            '${results.length} result${results.length != 1 ? 's' : ''} found',
            style: TextStyle(
                color: AuraColors.textSecondary, fontSize: 13),
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _buildResultCard(results[index]),
            childCount: results.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 18,
            crossAxisSpacing: 14,
            childAspectRatio: 0.58,
          ),
        ),
      ),
    ];
  }

  Widget _buildResultCard(StoryCard story) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.3),
                  blurRadius: 16,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(story.image, fit: BoxFit.cover,
                  width: double.infinity, height: double.infinity),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(story.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: AuraColors.textPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 2),
        Text(story.subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: AuraColors.textSecondary, fontSize: 12)),
      ],
    );
  }

  // ─────────────────────────────────────────
  //  BROWSE CONTENT (no query)
  // ─────────────────────────────────────────
  List<Widget> _buildBrowseContent() {
    return [
      // Recent searches
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 20, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Recent Searches',
                  style: TextStyle(
                      color: AuraColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              Text('Clear',
                  style: TextStyle(
                      color: AuraColors.accentGold,
                      fontSize: 13,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 20, 8),
          child: Wrap(
            spacing: 10,
            runSpacing: 8,
            children: recentSearches.map((s) {
              return GestureDetector(
                onTap: () => setState(() {
                  _searchController.text = s;
                  _query = s;
                }),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: AuraColors.surface,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AuraColors.chipBorder),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.history_rounded,
                          color: AuraColors.textSecondary, size: 16),
                      const SizedBox(width: 6),
                      Text(s,
                          style: const TextStyle(
                              color: AuraColors.textPrimary, fontSize: 13)),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),

      // Browse by Mood
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 20, 12),
          child: const Text('Browse by Mood',
              style: TextStyle(
                  color: AuraColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _buildMoodCard(moodCategories[index]),
            childCount: moodCategories.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.6,
          ),
        ),
      ),

      // Popular Voices
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 28, 20, 12),
          child: const Text('Popular Voices',
              style: TextStyle(
                  color: AuraColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 24, right: 20),
            itemCount: voiceActors.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final va = voiceActors[index];
              return SizedBox(
                width: 72,
                child: Column(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: AuraColors.aura,
                        boxShadow: [
                          BoxShadow(
                            color: AuraColors.accentPurple.withValues(alpha: 0.3),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(va.initial,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(va.name.split(' ').first,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: AuraColors.textPrimary, fontSize: 12)),
                    Text('${va.storyCount} stories',
                        style: TextStyle(
                            color: AuraColors.textSecondary, fontSize: 10)),
                  ],
                ),
              );
            },
          ),
        ),
      ),

      // Trending Tags
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 20, 12),
          child: const Text('Trending Tags',
              style: TextStyle(
                  color: AuraColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 20, 0),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: trendingTags.map((tag) {
              return GestureDetector(
                onTap: () => setState(() {
                  _searchController.text = tag.replaceFirst('#', '');
                  _query = tag.replaceFirst('#', '');
                }),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: AuraColors.surface,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AuraColors.chipBorder),
                  ),
                  child: Text(tag,
                      style: const TextStyle(
                          color: AuraColors.accentGold,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ];
  }

  Widget _buildMoodCard(MoodCategory mood) {
    return GestureDetector(
      onTap: () => widget.onCategoryTap(mood),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              mood.color.withValues(alpha: 0.35),
              mood.color.withValues(alpha: 0.1),
            ],
          ),
          border: Border.all(color: mood.color.withValues(alpha: 0.2)),
        ),
        child: Stack(
          children: [
            // Decorative large emoji
            Positioned(
              right: -4,
              bottom: -4,
              child: Text(mood.emoji,
                  style: TextStyle(fontSize: 40,
                      color: Colors.white.withValues(alpha: 0.08))),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(mood.emoji, style: const TextStyle(fontSize: 24)),
                  const SizedBox(height: 6),
                  Text(mood.label,
                      style: const TextStyle(
                          color: AuraColors.textPrimary,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════
//  CATEGORY DETAIL SCREEN
// ═══════════════════════════════════════════
class CategoryDetailScreen extends StatefulWidget {
  final MoodCategory category;

  const CategoryDetailScreen({super.key, required this.category});

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  int _selectedFilter = 0;
  final List<String> _filters = ['All', 'Popular', 'New', 'Short', 'Long'];

  @override
  Widget build(BuildContext context) {
    final cat = widget.category;
    return Scaffold(
      backgroundColor: AuraColors.bg,
      body: CustomScrollView(
        slivers: [
          // ── Hero header ──
          SliverToBoxAdapter(child: _buildHero(cat)),

          // ── Filter chips ──
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 24, right: 20, top: 8),
                itemCount: _filters.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final isActive = _selectedFilter == index;
                  return GestureDetector(
                    onTap: () => setState(() => _selectedFilter = index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 8),
                      decoration: BoxDecoration(
                        color: isActive
                            ? cat.color.withValues(alpha: 0.25)
                            : AuraColors.surface,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isActive
                              ? cat.color.withValues(alpha: 0.6)
                              : AuraColors.chipBorder,
                        ),
                      ),
                      child: Text(
                        _filters[index],
                        style: TextStyle(
                          color: isActive
                              ? Colors.white
                              : AuraColors.textSecondary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // ── Stories count ──
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 20, 4),
              child: Text(
                '${cat.stories.length} Stories',
                style: TextStyle(
                    color: AuraColors.textSecondary,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),

          // ── Story grid ──
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(24, 12, 24, 100),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    _buildStoryGridCard(cat.stories[index], cat.color),
                childCount: cat.stories.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 14,
                childAspectRatio: 0.58,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHero(MoodCategory cat) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            cat.color.withValues(alpha: 0.35),
            cat.color.withValues(alpha: 0.08),
            AuraColors.bg,
          ],
          stops: const [0.0, 0.6, 1.0],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // Decorative bg emoji
            Positioned(
              right: 20,
              top: 50,
              child: Text(cat.emoji,
                  style: TextStyle(
                      fontSize: 100,
                      color: Colors.white.withValues(alpha: 0.06))),
            ),
            // Back button
            Positioned(
              left: 12,
              top: 8,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AuraColors.bg.withValues(alpha: 0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_back_rounded,
                      color: AuraColors.textPrimary, size: 22),
                ),
              ),
            ),
            // Content
            Positioned(
              left: 24,
              bottom: 16,
              right: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cat.emoji, style: const TextStyle(fontSize: 36)),
                  const SizedBox(height: 8),
                  Text(
                    cat.label,
                    style: const TextStyle(
                      color: AuraColors.textPrimary,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    cat.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AuraColors.textSecondary,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryGridCard(StoryCard story, Color accentColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Thumbnail
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: accentColor.withValues(alpha: 0.15),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(story.image, fit: BoxFit.cover),
                ),
                // Play overlay
                Positioned(
                  right: 8,
                  bottom: 8,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AuraColors.bg.withValues(alpha: 0.7),
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: Colors.white.withValues(alpha: 0.1)),
                    ),
                    child: const Icon(Icons.play_arrow_rounded,
                        color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        // Title
        Text(
          story.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: AuraColors.textPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 2),
        // Subtitle
        Text(
          story.subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: AuraColors.textSecondary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
