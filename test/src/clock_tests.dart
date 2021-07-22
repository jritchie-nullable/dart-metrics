// Copyright (c) 2014, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library metrics.clock_test;

import 'package:test/test.dart';
import 'package:metrics/metrics.dart';

main() {
  test('fake tick clock', () {
    final clock = new FakeTickClock();

    expect(clock.time, closeTo(new DateTime.now().millisecondsSinceEpoch, 100));
    expect(
        clock.tick,
        closeTo(
            new DateTime.now().millisecondsSinceEpoch *
                Duration.microsecondsPerMillisecond,
            100 * Duration.microsecondsPerMillisecond));
  });

  test('stopwatch clock', () {
    final clock = new StopwatchClock();

    expect(clock.time, closeTo(new DateTime.now().millisecondsSinceEpoch, 100));
    expect(
        clock.tick,
        closeTo(
            new DateTime.now().millisecondsSinceEpoch *
                Duration.microsecondsPerMillisecond,
            100 * Duration.microsecondsPerMillisecond));
  });
}
