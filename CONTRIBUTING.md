# Contributing to Saathvik Portfolio

Thank you for your interest in contributing to my portfolio project! This document provides guidelines and information for contributors.

## 🤝 How to Contribute

### Types of Contributions

We welcome several types of contributions:

1. **Bug Reports**: Report issues and bugs
2. **Feature Requests**: Suggest new features or improvements
3. **Code Contributions**: Submit code improvements or new features
4. **Documentation**: Improve documentation and examples
5. **Design**: UI/UX improvements and design suggestions
6. **Testing**: Help improve test coverage and quality

### Getting Started

1. **Fork the Repository**
   ```bash
   git clone https://github.com/Saathvik-Choudhary/Saathvik-Portfolio.git
   cd Saathvik-Portfolio
   ```

2. **Set Up Development Environment**
   ```bash
   flutter doctor
   flutter pub get
   ```

3. **Create a Branch**
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b bugfix/issue-description
   ```

4. **Make Your Changes**
   - Follow the coding standards
   - Add tests for new features
   - Update documentation as needed

5. **Test Your Changes**
   ```bash
   flutter test
   flutter analyze
   ```

6. **Commit Your Changes**
   ```bash
   git add .
   git commit -m "Add: brief description of changes"
   ```

7. **Push and Create Pull Request**
   ```bash
   git push origin feature/your-feature-name
   ```

## 📋 Development Guidelines

### Code Style

- Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused
- Use proper indentation (2 spaces)

### Flutter Best Practices

- Use `const` constructors where possible
- Implement proper state management
- Follow Material Design guidelines
- Optimize for performance
- Ensure accessibility compliance

### File Organization

```
lib/
├── main.dart
├── saathvik_portfolio/
│   ├── components/          # Reusable UI components
│   ├── pages/              # Page widgets
│   ├── services/           # Business logic and services
│   ├── models/             # Data models
│   ├── utils/              # Utility functions
│   └── constants/          # App constants
├── assets/                 # Images, fonts, etc.
└── test/                   # Test files
```

### Commit Message Format

Use conventional commit messages:

```
type(scope): description

[optional body]

[optional footer]
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Test additions or changes
- `chore`: Build process or auxiliary tool changes

Examples:
```
feat(portfolio): add dark mode toggle
fix(navigation): resolve mobile menu issue
docs(readme): update installation instructions
```

## 🧪 Testing

### Running Tests

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run specific test file
flutter test test/widget_test.dart
```

### Writing Tests

- Write unit tests for business logic
- Write widget tests for UI components
- Write integration tests for user flows
- Aim for high test coverage
- Use descriptive test names

### Test Structure

```dart
group('FeatureName', () {
  test('should do something when condition', () {
    // Arrange
    // Act
    // Assert
  });
});
```

## 🎨 Design Guidelines

### UI/UX Principles

- **Consistency**: Maintain consistent design patterns
- **Accessibility**: Ensure WCAG compliance
- **Responsiveness**: Support all screen sizes
- **Performance**: Optimize for smooth interactions
- **User Experience**: Focus on intuitive navigation

### Design System

- Use the established color palette
- Follow typography hierarchy
- Maintain consistent spacing
- Use appropriate animations
- Ensure proper contrast ratios

### Component Guidelines

- Create reusable components
- Use proper naming conventions
- Document component props
- Include usage examples
- Test component behavior

## 📝 Documentation

### Code Documentation

- Document public APIs
- Use Dart doc comments
- Include usage examples
- Explain complex algorithms
- Update documentation with changes

### README Updates

- Keep installation instructions current
- Update feature lists
- Include screenshots for UI changes
- Document new dependencies
- Update version information

## 🐛 Bug Reports

### Before Reporting

1. Check existing issues
2. Verify the bug with latest version
3. Try to reproduce the issue
4. Check for similar issues

### Bug Report Template

```markdown
**Bug Description**
A clear description of the bug.

**Steps to Reproduce**
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

**Expected Behavior**
What you expected to happen.

**Actual Behavior**
What actually happened.

**Screenshots**
If applicable, add screenshots.

**Environment**
- OS: [e.g., Windows, macOS, Linux]
- Flutter Version: [e.g., 3.5.3]
- Device: [e.g., iPhone 12, Pixel 5]

**Additional Context**
Any other context about the problem.
```

## 💡 Feature Requests

### Feature Request Template

```markdown
**Feature Description**
A clear description of the feature.

**Use Case**
Why would this feature be useful?

**Proposed Solution**
How would you like this feature to work?

**Alternatives Considered**
Any alternative solutions you've considered.

**Additional Context**
Any other context about the feature request.
```

## 🔍 Code Review Process

### Review Checklist

- [ ] Code follows style guidelines
- [ ] Tests are included and passing
- [ ] Documentation is updated
- [ ] No breaking changes (or properly documented)
- [ ] Performance impact is considered
- [ ] Accessibility is maintained
- [ ] Security implications are reviewed

### Review Guidelines

- Be constructive and respectful
- Focus on the code, not the person
- Suggest improvements, don't just point out problems
- Ask questions if something is unclear
- Approve when ready, don't rush

## 🚀 Release Process

### Version Numbering

We follow [Semantic Versioning](https://semver.org/):
- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

### Release Checklist

- [ ] All tests passing
- [ ] Documentation updated
- [ ] Changelog updated
- [ ] Version bumped
- [ ] Release notes prepared
- [ ] Tagged and released

## 📞 Getting Help

### Communication Channels

- **GitHub Issues**: For bugs and feature requests
- **GitHub Discussions**: For questions and general discussion
- **Email**: saathvikchoudhary@gmail.com
- **LinkedIn**: [Saathvik Choudhary](https://www.linkedin.com/in/saathvik-choudhary/)

### Response Time

- **Bug Reports**: Within 48 hours
- **Feature Requests**: Within 1 week
- **Pull Requests**: Within 3-5 business days
- **General Questions**: Within 1-2 business days

## 🏆 Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes
- Project documentation
- Social media acknowledgments

## 📄 License

By contributing to this project, you agree that your contributions will be licensed under the same license as the project (MIT License).

## 🙏 Thank You

Thank you for contributing to my portfolio project! Your contributions help make it better for everyone.

---

**Note**: This contributing guide is a living document. Please suggest improvements through issues or pull requests.
