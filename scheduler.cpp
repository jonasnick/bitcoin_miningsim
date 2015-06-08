// Copyright (c) 2015 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "scheduler.h"

#include <assert.h>
#include <boost/bind.hpp>
#include <utility>

CScheduler::CScheduler() : simTime(0.0)
{
}

CScheduler::~CScheduler()
{
}


void CScheduler::serviceQueue()
{
    while (!taskQueue.empty()) {
        simTime = taskQueue.begin()->first;
        Function f = taskQueue.begin()->second;
        taskQueue.erase(taskQueue.begin());
        f();
    }
}

void CScheduler::schedule(CScheduler::Function f, double t)
{
    taskQueue.insert(std::make_pair(t, f));
}
