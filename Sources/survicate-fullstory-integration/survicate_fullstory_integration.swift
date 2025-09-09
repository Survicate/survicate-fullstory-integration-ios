// The Swift Programming Language
// https://docs.swift.org/swift-book

import FullStory
import Survicate

public class SurvicateFullStoryIntegration: IntegrationListener {
    public var providerName: String = "fullstory"
    let eventName = "Survicate question answered"

    public init() {}

    public func onWillSendAnswer() -> [String : Survicate.IntegrationPayload] {
        guard let url = FS.currentSessionURL else { return [:] }

        return ["fullstory_url": .init(url)]
    }

    public func questionAnswered(_ event: QuestionAnsweredEvent) {
        FS.event(eventName, properties: event.toFullStoryEventProperties())
        FS.setUserVars(event.toFullStoryUserVars())
    }
}

extension QuestionAnsweredEvent {
    func toFullStoryEventProperties() -> [String: String] {
        return [
            "answer_str": answer.value ?? "",
            "question_str": question,
            "survey_name_str": surveyName
        ]
    }

    func toFullStoryUserVars() -> [String: String] {
        return [
            "survey_id": surveyId,
            "survicate_response_uuid_str": responseUUID,
            "survicate_visitor_uuid_str": visitorUUID
        ]
    }
}
