# Release Log

## Table of Contents

- [v1.0.2](#v102)
- [v1.0.1](#v101)
- [v1.0.0](#v100)
- [v1.0.0-alpha4](#v100-alpha4)
- [v1.0.0-alpha3](#v100-alpha3)
- [v1.0.0-alpha2](#v100-alpha2)
- [v1.0.0-alpha1](#v100-alpha1)

## v1.0.2

### Features / Fixes

- :memo: Rename "Projects" title to "Personal Work"
- :memo: Remove redunant files note required.
- :memo: Add "Sentiment & Topic Analysis of Reviews using PySpark" project to project models

## v1.0.1

### Features / Fixes

- :sparkles: Add favicon logo next to title of page
- ~~:sparkles: Add Google Tag to index to track user traffic and behaviour on the website with consent banner~~
- :bug: Progress bar on loading screen to fit the size of the parent container
- :bug: Slow down animation for progress bar and change to be forward animation (not infinite)
- :wastebasket: Remove legacy flutter configuration files in root folder (stored in src directory)

## v1.0.0

Promoted `v1.0.0-alpha4` to stable.

### Features / Fixes

- :bulb: Added loading screen with animations whilst the website app is rendering
- :sparkles: Enhanced loading screen with dynamic code animation and portfolio theme colors
- :bug: Remove mail icon in app bar when screen size matches isTablet
- :art: Improved project card descriptions with optimal text display and consistent sizing
- :iphone: Fixed excessive whitespace in project cards on tablet view
- :lipstick: Fine-tuned experience timeline card sizing for better content display

### Performance / Technical

- :zap: Pre-loaded Google Fonts and assets into the web index.html file
- :rocket: Optimized initial page load time with preloaded resources
- :wheelchair: Improved accessibility with better contrast in description text
- :mag: Enhanced SEO with proper meta tags and descriptions

## v1.0.0-alpha4

### Features / Fixes

- :art: Implemented consistent button styling across the portfolio with rounded corners and hover effects
- :sparkles: Added circular button styling to project cards with hover animations & slide in effect when loading
- :bulb: Improved responsive font sizing through centralized methods in `responsive.dart`
- :bug: Fixed `Scaffold.of(context)` error by implementing `GlobalKey<ScaffoldState>` for improved navigation
- :lipstick: Updated email button styling to match arrow direction buttons for visual consistency
- :iphone: Improved mobile experience with better spacing and text fitting in timeline cards
- :zap: Added hover color transitions on buttons for better user feedback
- :art: Added rounded corners to project cards to match experience timeline styling
- :bulb: Added spacer between card content and action buttons for better visual separation
- :pencil2: Shortened experience timeline descriptions to ensure all text fits properly in boxes
- :mute: Proofread and improved readability of project descriptions
- :mag: Increased timeline item width slightly to accommodate more content
- :sparkles: Added interactive experience timeline with alternating cards for better visual flow
- :lipstick: Added technology tags with glowing borders to showcase skills in timeline items
- :iphone: Optimized project card sizes across different screen sizes to eliminate empty space
- :zap: Improved scrolling experience with navigation arrows for timeline sections
- :art: Unified text colors between timeline and project descriptions for better visual consistency
- :chart_with_upwards_trend: Adjusted aspect ratios for project cards to optimize display on desktop

### Performance / Technical

- :recycle: Refactored code to use animation controllers more efficiently
- :goal_net: Implemented proper error handling for Navigator actions
- :chart_with_upwards_trend: Optimized widget rebuilds by using specific state variables for hover states
- :bento: Improved asset management for consistent icon sizing across different screen sizes
- :construction: Enhanced code maintainability by centralizing responsive font sizing logic
- :zap: Implemented staggered animations for timeline items to create a more engaging loading sequence
- :recycle: Created reusable component for timeline cards to maintain consistent styling
- :bento: Simplified card layout structure for better rendering performance
- :wheelchair: Added max lines calculation based on available container space for optimal text display
- :zap: Optimized hover effect handling to reduce unnecessary widget rebuilds

## v1.0.0-alpha3

### Features / Fixes

- :bug: Fix issue with contact form not submitting correctly
- :art: Improve overall UI/UX design for a more modern look
- :arrow_up: Upgrade dependencies to the latest versions for better performance and security
- :lock: Enhance security measures for user data protection
- :memo: Update documentation to reflect new features and changes

## v1.0.0-alpha2

### Features / Fixes

- :hammer_and_wrench: Update deployment process to automatically deploy the latest version of the portfolio
- :hammer_and_wrench: Update `actions/upload@v3` to `actions/upload@v4` for compatibility purposes. Depreciated support by npm for these container versions.
- :hammer_and_wrench: Update `actions/setup-node@v3` to `actions/setup-node@v4` for compatibility purposes. Depreciated support by npm for these container versions.
- :hammer_and_wrench: Update `actions/download@v3` to `actions/download@v4` for compatibility purposes. Depreciated support by npm for these container versions.
- :hammer_and_wrench: Remove `corepack npm audit signatures` due to auditing signatures issue in workflow actions
- :wrench: deploy to `aaronginder.github.io/portfolio`
- :new: Add logo in the tab when the page loads
- :new: Update title in the tab when the page loads

## v1.0.0-alpha1

### Features / Fixes

- :zap: Responsive application for sizes aligned with a mobile, large mobile, tablet and laptop
- :new: Add appropriate links and details on project cards for contextual information on projects
- :hammer_and_wrench: Slow down the `AnimatedCounter` widget to allow users to see the animation
- :globe_with_meridians: Move certifications above software in `SideMenu` widget
- :wastebasket: Remove CV from portfolio due to sensitive nature
- :new: Update highlights to be applicable to career today to make it applicable to me
- :wrench: Split out the frameworks and certification sections
- :wrench: Automate GitHub workflows to test the repository; compile and deploy the website to the public repository
- :bulb: Project cards were not prominent enough. Create `glowDecoration` widget extending to a persistent border glow with hover glow prominence
- Add floating action button to allow mail functionality for mobile devices 

### Docs / Website

- :memo: Provide details in README.md file for private repo
- :memo: Details were missing from README.md for the `aaronginder.github.io` repository. Added technical details for purpose of repo and technology choices
