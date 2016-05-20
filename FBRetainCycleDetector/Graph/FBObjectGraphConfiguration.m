/**
 * Copyright (c) 2016-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "FBObjectGraphConfiguration.h"

@implementation FBObjectGraphConfiguration

- (instancetype)initWithFilterBlocks:(NSArray<FBGraphEdgeFilterBlock> *)filterBlocks
                 shouldInspectTimers:(BOOL)shouldInspectTimers
                   shouldCacheLayout:(BOOL)shouldCacheLayout
{
  if (self = [super init]) {
    _filterBlocks = [filterBlocks copy];
    _shouldInspectTimers = shouldInspectTimers;
    if (shouldCacheLayout) {
      _layoutCache = [NSMutableDictionary new];
    }
  }
  
  return self;
}

- (instancetype)init
{
  // By default we are inspecting timers
  return [self initWithFilterBlocks:@[]
                shouldInspectTimers:YES
                  shouldCacheLayout:YES];
}

@end
