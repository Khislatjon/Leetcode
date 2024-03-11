//
//  MeetingRoomsIII.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 18/02/24.
//

import Foundation

// MARK: - 2402. Meeting Rooms III

func mostBooked(_ n: Int, _ meetings: [[Int]]) -> Int {
    var meetings = meetings.sorted { $0[0] < $1[0] }
    var endTime = Array(0..<n)
    var numberOfMeetings = Array(repeating: 0, count: n)
    for meeting in meetings {
        var currentRoom: Int? {
            for room in 0..<n {
                if endTime[room] <= meeting[0] {
                    return room
                }
            }
            return nil
        }
        if let room = currentRoom {
            endTime[room] = meeting[1]
            numberOfMeetings[room] += 1
        } else if let room = endTime.firstIndex(of: endTime.min()!) {
            endTime[room] += meeting[1] - meeting[0]
            numberOfMeetings[room] += 1
        }
    }
    return numberOfMeetings.firstIndex(of: numberOfMeetings.max()!)!
}
