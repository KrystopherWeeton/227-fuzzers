void MissingField(const converter::LocationTrackerInterface &loc, StringPiece missing_name) override {
    status_ = util::Status(util::error::INVALID_ARGUMENT, StrCat(GetLocString(loc), ": missing field ", std::string(missing_name)));
}