// Copyright (c) 2017 Olli Wang
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
// ---
// Author: olliwang@ollix.com (Olli Wang)

#import "MOAppDelegate.h"

#include "moui/moui.h"

@implementation MOAppDelegate {
  moui::Application* _app;
}

- (void)applicationWillFinishLaunching:(NSNotification *)aNotification {
  // Registers the main window.
  moui::Window::RegisterMainNativeHandle((__bridge void*)_window);
  _window.contentViewController.view.autoresizesSubviews = YES;

  // Initializes and launches the moui application.
  moui_main();
  _app = moui::Application::GetMainApplication();
  _app->OnLaunch();
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  delete _app;
}

@end